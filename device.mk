# Copyright (C) 2011 The Android Open Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# The gps config appropriate for this device
$(call inherit-product, device/common/gps/gps_eu_supl.mk)

# Include proprietary stuff
$(call inherit-product-if-exists, vendor/huawei/u8800/u8800-vendor.mk)

DEVICE_PACKAGE_OVERLAYS += device/huawei/u8800/overlay

FRAMEWORKS_BASE_SUBDIRS += ../../$(LOCAL_PATH)/ril/

# These are the hardware-specific features
PRODUCT_COPY_FILES += \
	frameworks/base/data/etc/android.hardware.telephony.gsm.xml:system/etc/permissions/android.hardware.telephony.gsm.xml \
	frameworks/base/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
	frameworks/base/data/etc/android.hardware.camera.autofocus.xml:system/etc/permissions/android.hardware.camera.autofocus.xml \
	frameworks/base/data/etc/android.hardware.camera.flash-autofocus.xml:system/etc/permissions/android.hardware.camera.flash-autofocus.xml \
	frameworks/base/data/etc/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml \
	frameworks/base/data/etc/android.hardware.sensor.light.xml:system/etc/permissions/android.hardware.sensor.light.xml \
	frameworks/base/data/etc/android.hardware.sensor.proximity.xml:system/etc/permissions/android.hardware.sensor.proximity.xml \
	frameworks/base/data/etc/android.hardware.touchscreen.multitouch.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.xml \
	frameworks/base/data/etc/android.hardware.usb.accessory.xml:system/etc/permissions/android.hardware.usb.accessory.xml \
	frameworks/base/data/etc/android.hardware.usb.host.xml:system/etc/permissions/android.hardware.usb.host.xml \
	frameworks/base/data/etc/android.hardware.wifi.direct.xml:system/etc/permissions/android.hardware.wifi.direct.xml \
	frameworks/base/data/etc/handheld_core_hardware.xml:system/etc/permissions/handheld_core_hardware.xml

# Ramdisk
PRODUCT_COPY_FILES += \
	$(LOCAL_PATH)/init.rc:root/init.rc \
	$(LOCAL_PATH)/init.u8800.rc:root/init.u8800.rc \
	$(LOCAL_PATH)/init.huawei.rc:root/init.huawei.rc \
	$(LOCAL_PATH)/init.qcom.sh:root/init.qcom.sh \
	$(LOCAL_PATH)/init.qcom.usb.rc:root/init.qcom.usb.rc \
	$(LOCAL_PATH)/initlogo.rle:root/initlogo.rle \
	$(LOCAL_PATH)/ueventd.rc:root/ueventd.rc \
	$(LOCAL_PATH)/init.qcom.usb.sh:root/init.qcom.usb.sh

# Include initscripts
$(call inherit-product-if-exists, device/huawei/u8800/initscripts/initscripts.mk)

# Include keyboards
$(call inherit-product-if-exists, device/huawei/u8800/keyboards/keyboards.mk)
