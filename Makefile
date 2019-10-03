all: becho bnstore bnvml bpmfs bpmgd bsplitfs

becho:
	make -C echo/src -f Makefile.nvm

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
