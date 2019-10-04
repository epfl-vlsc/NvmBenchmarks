all: becho bnstore bnvml bpmfs bpmgd bsplitfs

becho:
	make -j8 -C echo/src -f Makefile.nvm -j8

cecho:
	make -j8 -C echo/src -f Makefile.nvm -j8 clean

bnstore:
	@echo nstore

bnvml:
	@echo nvml

bpmfs:
	@echo pmfs

bpmgd:
	@echo pmgd

bsplitfs:
	@echo splitfs
