USE_CAMERA_STUB := false

# Platform
TARGET_ARCH := arm
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_ARCH_VARIANT := armv7-a-neon
ARCH_ARM_HAVE_TLS_REGISTER := true
ARCH_ARM_HAVE_NEON :=true
ARCH_ARM_HAVE_VFP := true
TARGET_HAVE_TSLIB := true
BOARD_WANTS_EMMC_BOOT := true

TARGET_QCOM_DISPLAY_VARIANT := caf
TARGET_QCOM_AUDIO_VARIANT := caf

TARGET_BOARD_PLATFORM := msm7x30
TARGET_BOARD_PLATFORM_GPU := qcom-adreno200

TARGET_GLOBAL_CFLAGS += -mfpu=neon -mfloat-abi=softfp
TARGET_GLOBAL_CPPFLAGS += -mfpu=neon -mfloat-abi=softfp

TARGET_USE_SCORPION_BIONIC_OPTIMIZATION := true
TARGET_USE_SCORPION_PLD_SET := true
TARGET_SCORPION_BIONIC_PLDOFFS := 6
TARGET_SCORPION_BIONIC_PLDSIZE := 128

TARGET_NO_BOOTLOADER := true
TARGET_NO_RADIOIMAGE := true

BOARD_USES_QCOM_HARDWARE := true
BOARD_USES_QCOM_LIBS := true
BOARD_USES_QCOM_LIBRPC := true
TARGET_GRALLOC_USES_ASHMEM := true

BOARD_USE_SKIA_LCDTEXT := true

COMMON_GLOBAL_CFLAGS += -DQCOM_ICS_DECODERS -DQCOM_NO_SECURE_PLAYBACK
COMMON_GLOBAL_CFLAGS += -DQCOM_ICS_COMPAT

# Camera
BOARD_NEEDS_MEMORYHEAPPMEM := true
COMMON_GLOBAL_CFLAGS += -DICS_CAMERA_BLOB

# Graphics
DCHECK_FOR_EXTERNAL_FORMAT := true
USE_OPENGL_RENDERER := true
COMMON_GLOBAL_CFLAGS += -DREFRESH_RATE=60 -DQCOM_HARDWARE
TARGET_USES_C2D_COMPOSITION := true
TARGET_USES_OVERLAY := true
BOARD_EGL_CFG := device/huawei/msm7x30-common/egl.cfg
BOARD_OVERLAY_FORMAT_YCbCr_420_SP := true
BOARD_OVERLAY_MINIFICATION_LIMIT := 2
BOARD_NO_RGBX_8888 := true
BOARD_ADRENO_DECIDE_TEXTURE_TARGET := true

# Qcom/Display
TARGET_USES_ION := false
#TARGET_NO_HW_OVERLAY := true
#TARGET_NO_HW_VSYNC := true
TARGET_NO_HDMI := true
#BOARD_EGL_NEEDS_LEGACY_FB := true
#NUM_FRAMEBUFFER_SURFACE_BUFFERS :=3
COMMON_GLOBAL_CFLAGS += -DGENLOCK_IOC_DREADLOCK -DANCIENT_GL

WITH_JIT := true
ENABLE_JSC_JIT := true
JS_ENGINE := v8
HTTP := chrome
ENABLE_WEBGL := true
TARGET_FORCE_CPU_UPLOAD := true
WEBCORE_INPAGE_VIDEO := true

# Wifi
WPA_SUPPLICANT_VERSION           := VER_0_8_X
BOARD_WPA_SUPPLICANT_DRIVER      := NL80211
BOARD_WLAN_DEVICE                := qcwcn
WIFI_DRIVER_MODULE_PATH 		 := "/system/lib/modules/wlan.ko"
WIFI_DRIVER_MODULE_NAME 		 := "wlan"
WIFI_DRIVER_MODULE_ARG 			 := ""
WIFI_EXT_MODULE_PATH 			 := "/system/lib/modules/librasdioif.ko"
WIFI_EXT_MODULE_NAME 			 := "librasdioif"
WIFI_EXT_MODULE_ARG 			 := ""
WIFI_DRIVER_FW_PATH_STA 		 := "sta"
WIFI_DRIVER_FW_PATH_AP 			 := "ap"
WIFI_DRIVER_FW_PATH_P2P  		 := "p2p"
BOARD_USE_SERNUM_FOR_MAC := true
BOARD_HAS_QCOM_WLAN := true

# Bluetooth
BOARD_HAVE_BLUETOOTH := true
BOARD_HAVE_BLUETOOTH_BCM := false
# BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := device/huawei/msm7x30-common/bluetooth

# GPS
BOARD_USES_QCOM_GPS := true
BOARD_VENDOR_QCOM_GPS_LOC_API_HARDWARE := msm7x30
BOARD_VENDOR_QCOM_GPS_LOC_API_AMSS_VERSION := 50000
BOARD_GPS_LIBRARIES := libloc_api

# Radio class.
BOARD_RIL_CLASS := ../../../device/huawei/msm7x30-common/ril/

# Lights
TARGET_PROVIDES_LIBLIGHT := true

# Kernel
TARGET_NO_KERNEL := false
TARGET_KERNEL_CUSTOM_TOOLCHAIN := arm-eabi-4.4.3
TARGET_KERNEL_SOURCE := kernel/huawei/u8800
TARGET_KERNEL_CONFIG := u8800_defconfig
BOARD_KERNEL_CMDLINE := console=ttyDCC0 androidboot.hardware=huawei
BOARD_INSTALLER_CMDLINE := $(BOARD_KERNEL_CMDLINE)
BOARD_KERNEL_BASE := 0x00200000
BOARD_KERNEL_PAGESIZE := 4096

# File System
TARGET_USERIMAGES_USE_EXT4 := true
BOARD_USE_USB_MASS_STORAGE_SWITCH := true
TARGET_USE_CUSTOM_LUN_FILE_PATH := /sys/devices/platform/msm_hsusb/gadget/lun
BOARD_VOLD_EMMC_SHARES_DEV_MAJOR := true
TARGET_USE_CUSTOM_SECOND_LUN_NUM := 1
BOARD_VOLD_MAX_PARTITIONS := 14

# Recovery
BOARD_HAS_NO_SELECT_BUTTON := true
RECOVERY_CHARGEMODE := true
BOARD_UMS_LUNFILE := /sys/devices/platform/msm_hsusb/gadget/lun0/file
TARGET_RECOVERY_INITRC := device/huawei/msm7x30-common/recovery/recovery.rc
TARGET_RECOVERY_FSTAB := device/huawei/msm7x30-common/recovery_recovery.fstab
BOARD_RECOVERY_RMT_STORAGE := true

# Custom releasetools for old partition table.
TARGET_PROVIDES_RELEASETOOLS := true
