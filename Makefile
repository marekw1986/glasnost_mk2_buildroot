BR  := $(CURDIR)/buildroot
EXT := $(CURDIR)/external
OUT := $(CURDIR)/output

%:
	@$(MAKE) -C $(BR) O=$(OUT) BR2_EXTERNAL=$(EXT) $@
