ifneq ($(V),1)
Q = @
MAKEFLAGS += --no-print-dir
endif

.PHONY: all
all: libopencm3

.PHONY: libopencm3
libopencm3:
	$(Q)if [ ! -f libopencm3/Makefile ]; then \
		echo "Initialising git submodules..." ;\
		git submodule init ;\
		git submodule update ;\
	fi
	$(Q)$(MAKE) -C libopencm3 lib

.PHONY: usbserial
usbserial:	libopencm3
	$(Q)$(MAKE) -C usbserial

.PHONY: usb-spi
usb-spi:	libopencm3
	$(Q)$(MAKE) -C usb-spi

.PHONY: clean
clean:
	$(Q)$(MAKE) -C libopencm3 $@
	$(Q)$(MAKE) -C src $@
