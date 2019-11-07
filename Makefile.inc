#checker dir
CHECKERDIR := ~/git/NvmFlow/dfbuild/lib
#benchmark dir
BENCHDIR := ~/git/NvmBenchmarks/benchmarks
# intermediate directory for generated bitcode files
OBJDIR := .bc
# intermediate directory for generated dependency files
DEPDIR := .d

# bitcode files, auto generated from source files
OBJS := $(patsubst %,$(OBJDIR)/%.bc,$(basename $(SRCS)))
# dependency files, auto generated from source files
DEPS := $(patsubst %,$(DEPDIR)/%.d,$(basename $(SRCS)))

# compilers (at least gcc and clang) don't create the subdirectories automatically
$(shell mkdir -p $(dir $(OBJS)) >/dev/null)
$(shell mkdir -p $(dir $(DEPS)) >/dev/null)

# C compiler
CC := clang
# C++ compiler
CXX := clang++
# linker
LD := llvm-link
# pass loader
PASS := opt

# flags required for dependency generation; passed to compilers
DEPFLAGS = -MT $@ -MD -MP -MF $(DEPDIR)/$*.Td
#flags for llvm compilation
CHECKERFLAGS = -emit-llvm -fno-discard-value-names -ggdb -femit-all-decls -fstandalone-debug -O0 -Xclang -disable-O0-optnone
#flags for constant propagation
CONSFLAGS = -load $(CHECKERDIR)/libcons.so -cons
#flags for dead code elimination opt
ADCEFLAGS = -load $(CHECKERDIR)/libsimp.so -simp
#flags for alias analysis
ALLOCFLAGS = -load $(CHECKERDIR)/liballoc.so -alloc

# compile C source files
COMPILE.c = $(CC) $(CHECKERFLAGS) $(DEPFLAGS) $(INCFLAGS) $(CFLAGS) $(CPPFLAGS) -c -o $@
# compile C++ source files
COMPILE.cc = $(CXX) $(CHECKERFLAGS) $(DEPFLAGS) $(INCFLAGS) $(CXXFLAGS) $(CPPFLAGS) -c -o $@
# link object files to binary
LINK.bc = $(LD) $(LDLIBS) -o $@
# postcompile step
POSTCOMPILE = mv -f $(DEPDIR)/$*.Td $(DEPDIR)/$*.d
# postlink step
POSTLINK = cp $@ $@.bc; cp $@.bc $@.ll $(BENCHDIR)
# constant propagate bitcode files
CONS = $(PASS) $(CONSFLAGS) -o $@ $@
# dead code eliminate bitcode files
ACDE = $(PASS) -mem2reg $(ADCEFLAGS) -o $@ $@
#improve alias analysis for pmalloc
ALLOC = $(PASS) $(ALLOCFLAGS) -o $@ $@
#dissassemble bitcode to llvm ir
DIS = llvm-dis $@

.PHONY: clean
clean:
	$(RM) -r $(OBJDIR) $(DEPDIR)

.PHONY: uninstall
uninstall:
	@echo no uninstall tasks configured

$(BIN): $(OBJS)
	$(LINK.bc) $^
	$(DIS)
	$(POSTLINK)

$(OBJDIR)/%.bc: %.c
$(OBJDIR)/%.bc: %.c $(DEPDIR)/%.d
	$(COMPILE.c) $<
	$(POSTCOMPILE)
	$(ALLOC)
	$(CONS)
	$(ACDE)
	
$(OBJDIR)/%.bc: %.cpp
$(OBJDIR)/%.bc: %.cpp $(DEPDIR)/%.d
	$(COMPILE.cc) $<
	$(POSTCOMPILE)
	$(ALLOC)
	$(CONS)
	$(ACDE)

$(OBJDIR)/%.bc: %.cc
$(OBJDIR)/%.bc: %.cc $(DEPDIR)/%.d
	$(COMPILE.cc) $<
	$(POSTCOMPILE)
	$(ALLOC)
	$(CONS)
	$(ACDE)

.PRECIOUS = $(DEPDIR)/%.d
$(DEPDIR)/%.d: ;

-include $(DEPS)
