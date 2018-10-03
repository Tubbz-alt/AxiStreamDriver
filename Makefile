AXIDMA_HOME := $(shell pwd)

obj-m := AxiStreamDmaModule.o

all:
	make ARCH=arm CROSS_COMPILE=$(CROSS_COMPILE) -C $(KERNEL) M=$(AXIDMA_HOME) modules

clean:
	make -C $(KERNEL) M=$(AXIDMA_HOME) clean
