APP_MODULES := lwrapper freetype jbigkit jpeg libpng libzip openjpeg tiff

APP_OPTIM := release
APP_ABI := armeabi armeabi-v7a

LOCAL_IS_SUPPORT_STL := true
ifeq ($(LOCAL_IS_SUPPORT_STL),true)
  APP_STL := stlport_static
#STLPORT_FORCE_REBUILD := true
endif
