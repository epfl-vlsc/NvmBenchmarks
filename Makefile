all: becho bnstore bnvml bpmfs bpmgd bsplitfs

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
	@echo pmgd

bsplitfs:
	@echo splitfs
