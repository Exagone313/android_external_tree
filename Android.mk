LOCAL_PATH:= $(call my-dir)
include $(CLEAR_VARS)

LOCAL_SRC_FILES := gcolor.c  ghash.c  ghtml.c  gjson.c  gstrverscmp.c \
                   gtree.c  gunix.c  gxml.c

LOCAL_C_INCLUDES := src

LOCAL_CFLAGS := -O2 -Wall -DUNIX -D__BIONIC__ -D_LARGEFILE64_SOURCE \
                -D_FILE_OFFSET_BITS=64

LOCAL_ARM_MODE := arm

LOCAL_MODULE := tree
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_PATH := $(TARGET_OUT_OPTIONAL_EXECUTABLES)

include $(BUILD_EXECUTABLE)
