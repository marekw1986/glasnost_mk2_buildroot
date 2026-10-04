BR  := $(CURDIR)/buildroot
EXT := $(CURDIR)/external
OUT := $(CURDIR)/output

#%:
#	@$(MAKE) -C $(BR) O=$(OUT) BR2_EXTERNAL=$(EXT) $@

build:
	make -C output BR2_EXTERNAL=$(CURDIR)/external

configure:
	make -C buildroot O=$(CURDIR)/output BR2_EXTERNAL=$(CURDIR)/external glasnost_mk2_defconfig

menuconfig:
	make -C $(CURDIR)/output menuconfig 

mrproper:
	rm -rf $(CURDIR)/output/*
