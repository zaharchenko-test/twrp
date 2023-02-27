LOCAL_PATH := $(call my-dir)

ifeq ($(TARGET_DEVICE),jd2019)
include $(call all-subdir-makefiles,$(LOCAL_PATH))
endif
