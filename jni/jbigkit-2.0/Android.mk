LOCAL_PATH := $(call my-dir)
include $(CLEAR_VARS)

LOCAL_ARM_MODE := arm
LOCAL_C_INCLUDES := $(LOCAL_PATH)/libjbig

LOCAL_CFLAGS := 

LOCAL_LDLIBS    := -lz
LOCAL_MODULE    := jbigkit
LOCAL_SRC_FILES := libjbig/jbig.c libjbig/jbig_ar.c libjbig/jbig85.c

include $(BUILD_STATIC_LIBRARY)
#include $(BUILD_SHARED_LIBRARY)