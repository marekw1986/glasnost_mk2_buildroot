TESTAPP_VERSION = 1.0
TESTAPP_SITE = $(BR2_EXTERNAL)/package/testapp/src
TESTAPP_SITE_METHOD = local

define TESTAPP_BUILD_CMDS
	$(TARGET_CC) $(TARGET_CFLAGS) $(TARGET_LDFLAGS) \
		-o $(@D)/testapp $(@D)/testapp.c
endef

define TESTAPP_INSTALL_TARGET_CMDS
	$(INSTALL) -D -m 0755 $(@D)/testapp \
		$(TARGET_DIR)/usr/bin/testapp
	$(INSTALL) -D -m 0755 \
		$(BR2_EXTERNAL)/package/testapp/S99testapp \
		$(TARGET_DIR)/etc/init.d/S99testapp
endef

$(eval $(generic-package))
