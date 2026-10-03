# external.mk
include $(sort $(wildcard $(BR2_EXTERNAL_MYBOARD_PATH)/package/*/*.mk))
