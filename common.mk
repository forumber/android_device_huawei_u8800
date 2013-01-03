$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)
$(call inherit-product, build/target/product/full_base_telephony.mk)
# The GPS configuration appropriate for this device.
$(call inherit-product, device/common/gps/gps_as_supl.mk)

$(call inherit-product-if-exists, vendor/huawei/msm7x30-common/msm7x30-common-vendor.mk)

# inherit from the proprietary version
-include vendor/huawei/msm7x30-common/BoardConfigVendor.mk

DEVICE_PACKAGE_OVERLAYS += device/huawei/msm7x30-common/overlay

PRODUCT_AAPT_CONFIG := normal hdpi
PRODUCT_AAPT_PREF_CONFIG := hdpi

# Video
PRODUCT_PACKAGES += \
    libI420colorconvert \
    libstagefrighthw \
    libmm-omxcore \
    libOmxCore

# Graphics
PRODUCT_PACKAGES += \
    copybit.msm7x30 \
    gralloc.msm7x30 \
    hwcomposer.msm7x30 \
    libtilerenderer

# Audio
PRODUCT_PACKAGES += \
    audio.primary.msm7x30 \
    audio_policy.msm7x30 \
    audio.a2dp.default \
    libaudioutils

# Other HALs
PRODUCT_PACKAGES += \
    power.huawei \
    gps.msm7x30 \
    lights.msm7x30

# Other Packages
PRODUCT_PACKAGES += \
    dexpreopt \
    libloc_api-rpc \
    make_ext4fs \
    setup_fs \
    e2fsck \
    com.android.future.usb.accessory 

PRODUCT_TAGS += dalvik.gc.type-precise

PRODUCT_COPY_FILES += \
    device/huawei/msm7x30-common/ramdisk/init.huawei.rc:root/init.huawei.rc \
    device/huawei/msm7x30-common/ramdisk/ueventd.huawei.rc:root/ueventd.huawei.rc \
    device/huawei/msm7x30-common/ramdisk/init.huawei.usb.rc:root/init.huawei.usb.rc

PRODUCT_COPY_FILES += \
    device/huawei/msm7x30-common/prebuilt/fw_4330_b2.bin:system/wifi/fw_4330_b2.bin \
    device/huawei/msm7x30-common/configs/nvram_4330.txt:system/wifi/nvram_4330.txt \
    device/huawei/msm7x30-common/configs/dhcpcd.conf:system/etc/dhcpcd/dhcpcd.conf \
    device/huawei/msm7x30-common/configs/wpa_supplicant.conf:system/etc/wifi/wpa_supplicant.conf

PRODUCT_COPY_FILES += \
    device/huawei/msm7x30-common/prebuilt/BCM4330.hcd:system/etc/bluetooth/BCM4330.hcd \
    device/huawei/msm7x30-common/configs/init.bcm.bt.sh:system/etc/bluetooth/init.bcm.bt.sh

PRODUCT_COPY_FILES += \
    device/huawei/msm7x30-common/configs/audio_policy.conf:system/etc/audio_policy.conf \
    device/huawei/msm7x30-common/configs/AudioFilter.csv:system/etc/AudioFilter.csv \
    device/huawei/msm7x30-common/configs/AutoVolumeControl.txt:system/etc/AutoVolumeControl.txt \
    device/huawei/msm7x30-common/configs/media_codecs.xml:system/etc/media_codecs.xml \
    device/huawei/msm7x30-common/configs/media_profiles.xml:system/etc/media_profiles.xml \
    device/huawei/msm7x30-common/configs/vold.fstab:system/etc/vold.fstab

PRODUCT_COPY_FILES += \
    device/huawei/msm7x30-common/idc/synaptics.idc:system/usr/idc/synaptics.idc \
    device/huawei/msm7x30-common/idc/qwerty.idc:system/usr/idc/qwerty.idc \
    device/huawei/msm7x30-common/idc/qwerty2.idc:system/usr/idc/qwerty2.idc \
    device/huawei/msm7x30-common/keychars/7x27a_kp.kcm:system/usr/keychars/7x27a_kp.kcm \
    device/huawei/msm7x30-common/keylayout/7x27a_kp.kl:system/usr/keylayout/7x27a_kp.kl \
    device/huawei/msm7x30-common/keylayout/7k_handset.kl:system/usr/keylayout/7k_handset.kl \
    device/huawei/msm7x30-common/keylayout/AVRCP.kl:system/usr/keylayout/AVRCP.kl \
    device/huawei/msm7x30-common/keylayout/Generic.kl:system/usr/keylayout/Generic.kl \
    device/huawei/msm7x30-common/keylayout/surf_keypad.kl:system/usr/keylayout/surf_keypad.kl

# Install the features available on this device.
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/handheld_core_hardware.xml:system/etc/permissions/handheld_core_hardware.xml \
    frameworks/native/data/etc/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml \
    frameworks/native/data/etc/android.hardware.sensor.accelerometer.xml:system/etc/permissions/android.hardware.sensor.accelerometer.xml \
    frameworks/native/data/etc/android.hardware.sensor.compass.xml:system/etc/permissions/android.hardware.sensor.compass.xml \
    frameworks/native/data/etc/android.hardware.sensor.proximity.xml:system/etc/permissions/android.hardware.sensor.proximity.xml \
    frameworks/native/data/etc/android.hardware.sensor.light.xml:system/etc/permissions/android.hardware.sensor.light.xml \
    frameworks/native/data/etc/android.hardware.touchscreen.multitouch.distinct.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.distinct.xml \
    frameworks/native/data/etc/android.hardware.usb.accessory.xml:system/etc/permissions/android.hardware.usb.accessory.xml \
    frameworks/native/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
    frameworks/native/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml

# Radio
PRODUCT_PROPERTY_OVERRIDES += \
    ril.subscription.types=NV,RUIM

# Audio
PRODUCT_PROPERTY_OVERRIDES += \
    dev.pm.dyn_sample_period=700000 \
    dev.pm.dyn_samplingrate=1 \
    headset.hook.delay=500

# CWM
PRODUCT_PROPERTY_OVERRIDES += \
    ro.cwm.enable_key_repeat=true

# Dalvik
PRODUCT_PROPERTY_OVERRIDES += \
    dalvik.vm.dexopt-data-only=1 \
    dalvik.vm.execution-mode=int:jit \
    dalvik.vm.heapgrowthlimit=36m \
    dalvik.vm.heapsize=128m \
    dalvik.vm.heapstartsize=5m \

# Display
# We should be using mdp composition but
# this is causing issues for 7x27a on CM
PRODUCT_PROPERTY_OVERRIDES += \
    debug.composition.type=mdp \
    debug.hwc.dynThreshold=1.91 \
    debug.sf.hw=1 \
    debug.sf.swaprect=1 \
    gfx.highend_override=yes \
    hwui.render_dirty_regions=true \
    persist.sys.use_dithering=2 \
    ro.max.fling_velocity=4000 \
    ro.opengles.version=131072 \
    ro.sf.lcd_density=240

# Qualcomm
PRODUCT_PROPERTY_OVERRIDES += \
    com.qc.hardware=true \
    debug.composition.type=mdp \
    hwui.render_dirty_regions.7x27A=true \
    ro.hw_plat=7x27A \
    ro.vendor.extension_library=/system/lib/libqc-opt.so

# USB
PRODUCT_PROPERTY_OVERRIDES += \
    persist.sys.usb.config=mtp,adb \
    ro.additionalmounts=/storage/sdcard0 \
    ro.emmc.sdcard.partition=19 \
    ro.vold.switchablepair=/storage/sdcard1,/storage/sdcard0 \
    ro.vold.umsdirtyratio=50

# Wi-Fi
PRODUCT_PROPERTY_OVERRIDES += \
    wifi.interface=eth0 \
    wifi.supplicant_scan_interval=15
