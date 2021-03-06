
LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

LOCAL_ARM_MODE := arm

LOCAL_MODULE := freetype
LOCAL_C_INCLUDES := $(LOCAL_PATH)/../freetype-ftmodule/include $(LOCAL_PATH)/include
LOCAL_LDLIBS := -lz
LOCAL_CFLAGS := -DFT2_BUILD_LIBRARY

LOCAL_SRC_FILES := \
        src/autofit/autofit.c \
        src/base/ftsystem.c \
        src/base/ftinit.c \
        src/base/ftdebug.c \
        src/base/ftbase.c \
        src/base/ftbbox.c \
        src/base/ftglyph.c \
        src/base/ftbitmap.c \
        src/base/ftcid.c \
        src/base/ftfstype.c \
        src/base/ftgasp.c \
        src/base/ftgxval.c \
        src/base/ftlcdfil.c \
        src/base/ftmm.c \
        src/base/ftotval.c \
        src/base/ftpatent.c \
        src/base/ftstroke.c \
        src/base/ftsynth.c \
        src/base/fttype1.c \
        src/base/ftxf86.c \
        src/cache/ftcache.c \
        src/cff/cff.c \
        src/cid/type1cid.c \
        src/gxvalid/gxvalid.c \
        src/otvalid/otvalid.c \
        src/pcf/pcf.c \
        src/pfr/pfr.c \
        src/psaux/psaux.c \
        src/pshinter/pshinter.c \
        src/psnames/psnames.c \
        src/raster/raster.c \
        src/sfnt/sfnt.c \
        src/truetype/truetype.c \
        src/type1/type1.c \
        src/smooth/smooth.c
#        src/winfonts/winfnt.c
#        src/gzip/ftgzip.c
#        src/lzw/ftlzw.c

include $(BUILD_STATIC_LIBRARY)
