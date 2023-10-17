LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)
LOCAL_MODULE := RemovePackages
LOCAL_MODULE_CLASS := APPS
LOCAL_MODULE_TAGS := optional
LOCAL_OVERRIDES_PACKAGES := PrebuiltGmail YouTube Drive MyVerizonServices Maps YouTubeMusicPrebuilt RecorderPrebuilt PlayGames PixelBuds AudioFx Camera2 SoundAmplifierPrebuilt AudioFX MusicFX PixelLiveWallpaperPrebuilt Papers EvoEgg NgaResources MaestroPrebuilt DiagnosticsToolPrebuilt Photos Gmail ScribePrebuilt Showcase
LOCAL_UNINSTALLABLE_MODULE := true
LOCAL_CERTIFICATE := PRESIGNED
LOCAL_SRC_FILES := /dev/null
include $(BUILD_PREBUILT)