all: becho bnstore bnvml bpmfs bpmgd bsplitfs

clean: cecho cnstore cnvml cpmfs cpmgd csplitfs

becho:
	make -j8 -C echo/src -f Makefile.nvm -j8

cecho:
	make -j8 -C echo/src -f Makefile.nvm -j8 clean

bnstore:
	make -j8 -C nstore/src -f Makefile.nvm -j8

cnstore:
	make -j8 -C nstore/src -f Makefile.nvm -j8 clean

bnvml:
	make -j8 -C nvml/src/examples/libpmemobj -f Makefile.nvm -j8

cnvml:
	make -j8 -C nvml/src/examples/libpmemobj -f Makefile.nvm -j8 clean

bpmfs:
	@echo pmfs

bpmgd:
	make -j8 -C pmgd/src -f Makefile.nvm -j8

cpmgd:
	make -j8 -C pmgd/src -f Makefile.nvm -j8 clean

bsplitfs:
	make -j8 -C splitfs -f Makefile.nvm -j8

csplitfs:
	make -j8 -C splitfs -f Makefile.nvm -j8 clean
