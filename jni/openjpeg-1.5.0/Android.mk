LOCAL_PATH:= $(call my-dir)
include $(CLEAR_VARS)

LOCAL_CFLAGS := 
# LOCAL_ARM_MODE := arm

LOCAL_MODULE    := openjpeg
LOCAL_SRC_FILES := \
	libopenjpeg/bio.c \
	libopenjpeg/cio.c \
	libopenjpeg/cidx_manager.c \
	libopenjpeg/dwt.c \
	libopenjpeg/event.c \
	libopenjpeg/image.c \
	libopenjpeg/j2k.c \
	libopenjpeg/j2k_lib.c \
	libopenjpeg/jp2.c \
	libopenjpeg/jpt.c \
	libopenjpeg/mct.c \
	libopenjpeg/mqc.c \
	libopenjpeg/openjpeg.c \
	libopenjpeg/phix_manager.c \
	libopenjpeg/pi.c \
	libopenjpeg/ppix_manager.c \
	libopenjpeg/raw.c \
	libopenjpeg/t1.c \
	libopenjpeg/t1_generate_luts.c \
	libopenjpeg/t2.c \
	libopenjpeg/tcd.c \
	libopenjpeg/tgt.c \
	libopenjpeg/thix_manager.c \
	libopenjpeg/tpix_manager.c

include $(BUILD_STATIC_LIBRARY)
#include $(BUILD_SHARED_LIBRARY)