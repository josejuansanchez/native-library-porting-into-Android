LOCAL_PATH := $(call my-dir)
include $(CLEAR_VARS)

# change if updated
include $(LOCAL_PATH)/../VERSION.mk

LOCAL_C_INCLUDES += \
 $(LOCAL_PATH)/../freetype-ftmodule/include \
 $(LOCAL_PATH)/../freetype$(FREETYPE_VERSION)/include \
 $(LOCAL_PATH)/../jpeg$(JPEG_VERSION) \
 $(LOCAL_PATH)/../libpng$(PNG_VERSION) \
 $(LOCAL_PATH)/../libzip$(ZIP_VERSION) \
 $(LOCAL_PATH)/../openjpeg$(OPENJPEG_VERSION) \
 $(LOCAL_PATH)/../tiff$(TIFF_VERSION)/libtiff

LOCAL_CFLAGS := -DANDROID_NDK
LOCAL_ARM_MODE := arm

LOCAL_MODULE := wrapper
LOCAL_SRC_FILES := wrapper.cpp

LOCAL_LDLIBS := -lz -ldl -llog -landroid -ljnigraphics -lGLESv1_CM
LOCAL_STATIC_LIBRARIES := \
  freetype \
  jbigkit \
  jpeg \
  libpng \
  libzip \
  openjpeg \
  tiff

include $(BUILD_SHARED_LIBRARY)
