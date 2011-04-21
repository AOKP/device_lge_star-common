# The gps config appropriate for this device
$(call inherit-product, device/common/gps/gps_us_supl.mk)

$(call inherit-product-if-exists, vendor/lge/star/star-vendor.mk)

DEVICE_PACKAGE_OVERLAYS += device/lge/star-common/overlay

# Live wallpaper packages
PRODUCT_PACKAGES += \
    LiveWallpapers \
    LiveWallpapersPicker \
    MagicSmokeWallpapers \
    VisualizationWallpapers \
    librs_jni

# Publish that we support the live wallpaper feature.
PRODUCT_COPY_FILES += \
    packages/wallpapers/LivePicker/android.software.live_wallpaper.xml:/system/etc/permissions/android.software.live_wallpaper.xml

# Board-specific init
PRODUCT_COPY_FILES += \
    device/lge/star-common/ueventd.tegra.rc:root/ueventd.tegra.rc

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/recovery/postrecoveryboot.sh:recovery/root/sbin/postrecoveryboot.sh

##HAL
PRODUCT_COPY_FILES += \
    vendor/lge/star-common/proprietary/lib/hw/gralloc.tegra.so:system/lib/hw/gralloc.tegra.so \
    vendor/lge/star-common/proprietary/lib/hw/lights.tegra.so:system/lib/hw/lights.tegra.so \
    vendor/lge/star-common/proprietary/lib/hw/overlay.tegra.so:system/lib/hw/overlay.tegra.so \
    vendor/lge/star-common/proprietary/lib/hw/sensors.tegra.so:system/lib/hw/sensors.tegra.so

##EGL
PRODUCT_COPY_FILES += \
    vendor/lge/star-common/proprietary/lib/egl/libEGL_tegra.so:system/lib/egl/libEGL_tegra.so \
    vendor/lge/star-common/proprietary/lib/egl/libGLESv1_CM_tegra.so:system/lib/egl/libGLESv1_CM_tegra.so \
    vendor/lge/star-common/proprietary/lib/egl/libGLESv2_tegra.so:system/lib/egl/libGLESv2_tegra.so \
    device/lge/star-common/egl.cfg:system/lib/egl/egl.cfg

##Wifi
PRODUCT_COPY_FILES += \
    device/lge/star-common/wpa_supplicant.conf:system/etc/wifi/wpa_supplicant.conf \
    device/lge/star-common/dhcpcd.conf:system/etc/dhcpcd/dhcpcd.conf \
    vendor/lge/star-common/proprietary/etc/wl/nvram.txt:system/etc/wl/nvram.txt \
    vendor/lge/star-common/proprietary/etc/wl/rtecdc-apsta.bin:system/etc/wl/rtecdc-apsta.bin \
    vendor/lge/star-common/proprietary/etc/wl/rtecdc-mfgtest.bin:system/etc/wl/rtecdc-mfgtest.bin \
    vendor/lge/star-common/proprietary/etc/wl/rtecdc.bin:system/etc/wl/rtecdc.bin \
    device/lge/star-common/prebuilt/wireless.ko:system/lib/modules/wireless.ko

##GPS
PRODUCT_COPY_FILES += \
    device/lge/star-common/gps_brcm_conf.xml:system/etc/gps_brcm_conf.xml \
    vendor/lge/star-common/proprietary/bin/glgps:system/bin/glgps \
    vendor/lge/star-common/proprietary/lib/libgps.so:obj/lib/libgps.so \
    vendor/lge/star-common/proprietary/lib/libgps.so:system/lib/libgps.so

## Hardware capabilities
PRODUCT_COPY_FILES += \
    frameworks/base/data/etc/handheld_core_hardware.xml:system/etc/permissions/handheld_core_hardware.xml \
    frameworks/base/data/etc/android.hardware.camera.flash-autofocus.xml:system/etc/permissions/android.hardware.camera.flash-autofocus.xml \
    frameworks/base/data/etc/android.hardware.camera.front.xml:system/etc/permissions/android.hardware.camera.front.xml \
    frameworks/base/data/etc/android.hardware.telephony.gsm.xml:system/etc/permissions/android.hardware.telephony.gsm.xml \
    frameworks/base/data/etc/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml \
    frameworks/base/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
    frameworks/base/data/etc/android.hardware.sensor.proximity.xml:system/etc/permissions/android.hardware.sensor.proximity.xml \
    frameworks/base/data/etc/android.hardware.sensor.light.xml:system/etc/permissions/android.hardware.sensor.light.xml \
    frameworks/base/data/etc/android.hardware.sensor.gyroscope.xml:system/etc/permissions/android.hardware.sensor.gyroscope.xml \
    frameworks/base/data/etc/android.hardware.sensor.compass.xml:system/etc/permissions/android.hardware.sensor.compass.xml \
    frameworks/base/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml \
    frameworks/base/data/etc/android.hardware.touchscreen.multitouch.jazzhand.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.jazzhand.xml


PRODUCT_COPY_FILES += \
    device/lge/star-common/media_profiles.xml:system/etc/media_profiles.xml

## OMX
PRODUCT_COPY_FILES += \
    vendor/lge/star-common/proprietary/etc/pvnvomx.cfg:system/etc/pvnvomx.cfg \
    vendor/lge/star-common/proprietary/lib/libpvnvomx.so:system/lib/libpvnvomx.so \
    vendor/lge/star-common/proprietary/lib/libdivxdrm.so:system/lib/libdivxdrm.so \
    vendor/lge/star-common/proprietary/lib/liblge_divxdrm.so:system/lib/liblge_divxdrm.so \
    vendor/lge/star-common/proprietary/lib/libtsparser.so:system/lib/libtsparser.so \
    vendor/lge/star-common/proprietary/lib/libhwmediaplugin.so:system/lib/libhwmediaplugin.so \
    vendor/lge/star-common/proprietary/lib/libhwmediaplugin.so:obj/lib/libhwmediaplugin.so \
    vendor/lge/star-common/proprietary/lib/libhwmediarecorder.so:system/lib/libhwmediarecorder.so \
    vendor/lge/star-common/proprietary/lib/libhwmediarecorder.so:obj/lib/libhwmediarecorder.so \
    vendor/lge/star-common/proprietary/lib/libstagefrighthw.so:system/lib/libstagefrighthw.so

    #vendor/lge/star-common/proprietary/bin/secureclockd:system/bin/secureclockd \
    vendor/lge/star-common/proprietary/lib/libsecureclock.so:system/lib/libsecureclock.so \
    vendor/lge/star-common/proprietary/lib/libbridge.so:system/lib/libbridge.so \#
PRODUCT_COPY_FILES += \
    vendor/lge/star-common/proprietary/etc/flex/flex.db:system/etc/flex/flex.db \
    vendor/lge/star-common/proprietary/etc/flex/flex.xml:system/etc/flex/flex.xml \
    vendor/lge/star-common/proprietary/bin/BCM4329B1_002.002.023.0735.0745.hcd:system/etc/firmware/BCM4329B1_002.002.023.0735.0745.hcd \
    vendor/lge/star-common/proprietary/bin/motion:system/bin/motion \
    vendor/lge/star-common/proprietary/bin/nvrm_daemon:system/bin/nvrm_daemon \
    vendor/lge/star-common/proprietary/bin/nvrm_avp.axf:system/bin/nvrm_avp.axf \
    vendor/lge/star-common/proprietary/bin/nvddk_audiofx_core.axf:system/bin/nvddk_audiofx_core.axf \
    vendor/lge/star-common/proprietary/bin/nvrm_avp.axf:system/bin/nvrm_avp.axf \
    vendor/lge/star-common/proprietary/bin/nvmm_wmaprodec.axf:system/bin/nvmm_wmaprodec.axf \
    vendor/lge/star-common/proprietary/bin/nvmm_wmadec.axf:system/bin/nvmm_wmadec.axf \
    vendor/lge/star-common/proprietary/bin/nvmm_wavdec.axf:system/bin/nvmm_wavdec.axf \
    vendor/lge/star-common/proprietary/bin/nvmm_vc1dec.axf:system/bin/nvmm_vc1dec.axf \
    vendor/lge/star-common/proprietary/bin/nvmm_sw_mp3dec.axf:system/bin/nvmm_sw_mp3dec.axf \
    vendor/lge/star-common/proprietary/bin/nvmm_sorensondec.axf:system/bin/nvmm_sorensondec.axf \
    vendor/lge/star-common/proprietary/bin/nvmm_service.axf:system/bin/nvmm_service.axf \
    vendor/lge/star-common/proprietary/bin/nvmm_reference.axf:system/bin/nvmm_reference.axf \
    vendor/lge/star-common/proprietary/bin/nvmm_mpeg4dec.axf:system/bin/nvmm_mpeg4dec.axf \
    vendor/lge/star-common/proprietary/bin/nvmm_mp3dec.axf:system/bin/nvmm_mp3dec.axf \
    vendor/lge/star-common/proprietary/bin/nvmm_mp2dec.axf:system/bin/nvmm_mp2dec.axf \
    vendor/lge/star-common/proprietary/bin/nvmm_manager.axf:system/bin/nvmm_manager.axf \
    vendor/lge/star-common/proprietary/bin/nvmm_jpegenc.axf:system/bin/nvmm_jpegenc.axf \
    vendor/lge/star-common/proprietary/bin/nvmm_jpegdec.axf:system/bin/nvmm_jpegdec.axf \
    vendor/lge/star-common/proprietary/bin/nvmm_h264dec.axf:system/bin/nvmm_h264dec.axf \
    vendor/lge/star-common/proprietary/bin/nvmm_audiomixer.axf:system/bin/nvmm_audiomixer.axf \
    vendor/lge/star-common/proprietary/bin/nvmm_adtsdec.axf:system/bin/nvmm_adtsdec.axf \
    vendor/lge/star-common/proprietary/bin/nvmm_aacdec.axf:system/bin/nvmm_aacdec.axf \
    vendor/lge/star-common/proprietary/bin/nvddk_audiofx_transport.axf:system/bin/nvddk_audiofx_transport.axf \
    vendor/lge/star-common/proprietary/bin/nvddk_audiofx_core.axf:system/bin/nvddk_audiofx_core.axf \
    vendor/lge/star-common/proprietary/bin/lgospd_hid:system/bin/lgospd_hid \
    vendor/lge/star-common/proprietary/bin/lgospd:system/bin/lgospd \
    vendor/lge/star-common/proprietary/bin/lgdrmserver:system/bin/lgdrmserver \
    vendor/lge/star-common/proprietary/bin/immvibed:system/bin/immvibed \
    vendor/lge/star-common/proprietary/bin/hdmid:system/bin/hdmid \
    vendor/lge/star-common/proprietary/bin/btld:system/bin/btld \
    vendor/lge/star-common/proprietary/bin/bridgeutil:system/bin/bridgeutil \
    device/lge/star-common/init.vsnet:system/bin/init.vsnet \
    vendor/lge/star-common/proprietary/lib/libril.so:system/lib/libril.so \
    vendor/lge/star-common/proprietary/lib/libnvos.so:system/lib/libnvos.so \
    vendor/lge/star-common/proprietary/lib/libnvrm.so:system/lib/libnvrm.so \
    vendor/lge/star-common/proprietary/lib/lge-ril.so:system/lib/lge-ril.so \
    vendor/lge/star-common/proprietary/lib/libnvapputil.so:system/lib/libnvapputil.so \
    vendor/lge/star-common/proprietary/lib/libnvmm_camera.so:system/lib/libnvmm_camera.so \
    vendor/lge/star-common/proprietary/lib/libcamera.so:obj/lib/libcamera.so \
    vendor/lge/star-common/proprietary/lib/libcamera.so:system/lib/libcamera.so \
    vendor/lge/star-common/proprietary/lib/libnvddk_2d_v2.so:system/lib/libnvddk_2d_v2.so \
    vendor/lge/star-common/proprietary/lib/libnvodm_imager.so:system/lib/libnvodm_imager.so \
    vendor/lge/star-common/proprietary/lib/libnvrm_graphics.so:system/lib/libnvrm_graphics.so \
    vendor/lge/star-common/proprietary/lib/libnvddk_2d.so:system/lib/libnvddk_2d.so \
    vendor/lge/star-common/proprietary/lib/libnvsm.so:system/lib/libnvsm.so \
    vendor/lge/star-common/proprietary/lib/libnvmm_utils.so:system/lib/libnvmm_utils.so \
    vendor/lge/star-common/proprietary/lib/libnvmm.so:system/lib/libnvmm.so \
    vendor/lge/star-common/proprietary/lib/libnvdispmgr_d.so:system/lib/libnvdispmgr_d.so \
    vendor/lge/star-common/proprietary/lib/liblvvil.so:system/lib/liblvvil.so \
    vendor/lge/star-common/proprietary/lib/libnvddk_audiofx.so:system/lib/libnvddk_audiofx.so \
    vendor/lge/star-common/proprietary/lib/libnvodm_query.so:system/lib/libnvodm_query.so \
    vendor/lge/star-common/proprietary/lib/libnvodm_misc.so:system/lib/libnvodm_misc.so \
    vendor/lge/star-common/proprietary/lib/libnvrm_channel.so:system/lib/libnvrm_channel.so \
    vendor/lge/star-common/proprietary/lib/libnvdispatch_helper.so:system/lib/libnvdispatch_helper.so \
    vendor/lge/star-common/proprietary/lib/libnvomxilclient.so:system/lib/libnvomxilclient.so \
    vendor/lge/star-common/proprietary/lib/libnvmm_logger.so:system/lib/libnvmm_logger.so \
    vendor/lge/star-common/proprietary/lib/libcgdrv.so:system/lib/libcgdrv.so \
    vendor/lge/star-common/proprietary/lib/liblgdrm.so:system/lib/liblgdrm.so \
    vendor/lge/star-common/proprietary/lib/libnvmm_audio.so:system/lib/libnvmm_audio.so \
    vendor/lge/star-common/proprietary/lib/libnvmm_contentpipe.so:system/lib/libnvmm_contentpipe.so \
    vendor/lge/star-common/proprietary/lib/libnvmm_image.so:system/lib/libnvmm_image.so \
    vendor/lge/star-common/proprietary/lib/libnvmm_manager.so:system/lib/libnvmm_manager.so \
    vendor/lge/star-common/proprietary/lib/libnvmm_misc.so:system/lib/libnvmm_misc.so \
    vendor/lge/star-common/proprietary/lib/libnvmm_parser.so:system/lib/libnvmm_parser.so \
    vendor/lge/star-common/proprietary/lib/libnvmm_tracklist.so:system/lib/libnvmm_tracklist.so \
    vendor/lge/star-common/proprietary/lib/libnvmm_video.so:system/lib/libnvmm_video.so \
    vendor/lge/star-common/proprietary/lib/libnvmm_videorenderer.so:system/lib/libnvmm_videorenderer.so \
    vendor/lge/star-common/proprietary/lib/libnvmm_vp6_video.so:system/lib/libnvmm_vp6_video.so \
    vendor/lge/star-common/proprietary/lib/libnvmm_writer.so:system/lib/libnvmm_writer.so \
    vendor/lge/star-common/proprietary/lib/libnvmm_service.so:system/lib/libnvmm_service.so \
    vendor/lge/star-common/proprietary/lib/libnvomx.so:system/lib/libnvomx.so \
    vendor/lge/star-common/proprietary/lib/libnvwsi.so:system/lib/libnvwsi.so \
    vendor/lge/star-common/proprietary/lib/libaudio.so:obj/lib/libaudio.so \
    vendor/lge/star-common/proprietary/lib/libaudiopolicy.so:obj/lib/libaudiopolicy.so \
    vendor/lge/star-common/proprietary/lib/libaudio.so:system/lib/libaudio.so \
    vendor/lge/star-common/proprietary/lib/libaudiopolicy.so:system/lib/libaudiopolicy.so

PRODUCT_COPY_FILES += \
    device/lge/star-common/prebuilt/rild:system/bin/rild \
    device/lge/star-common/prebuilt/setup-recovery:system/bin/setup-recovery

## This is a patched version of libicuuc to include the old symbols 
#  needed by glgps
PRODUCT_COPY_FILES += \
    device/lge/star-common/prebuilt/libicuuc.so:system/lib/libicuuc.so

$(call inherit-product, build/target/product/full_base.mk)

PRODUCT_LOCALES += hdpi

## LGE stuffs
PRODUCT_PACKAGES += \
    LGEServices \
    libbridge \
    libbridge_jni \
    libsecureclock \

PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=0
