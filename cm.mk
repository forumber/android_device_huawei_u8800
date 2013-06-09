# Correct bootanimation size for the screen
TARGET_BOOTANIMATION_NAME := vertical-480x800

# Inherit device configuration
$(call inherit-product, device/huawei/u8800/u8800.mk)

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_mini_phone.mk)

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/gsm.mk)

# Setup device configuration

PRODUCT_NAME := cm_u8800
PRODUCT_DEVICE := u8800
PRODUCT_BRAND := Huawei
PRODUCT_MODEL := U8800
PRODUCT_MANUFACTURER := Huawei
PRODUCT_RELEASE_NAME := U8800

#Set build fingerprint / ID / Product Name ect.
PRODUCT_BUILD_PROP_OVERRIDES += \
	PRODUCT_NAME=u8800 \
	BUILD_FINGERPRINT=huawei/u8800:4.2.1/IMM76L/223133:userdebug/test-keys \
	PRIVATE_BUILD_DESC="huawei-user 4.2.1 IMM76L 223133 test-keys" \
	BUILD_NUMBER=223134
