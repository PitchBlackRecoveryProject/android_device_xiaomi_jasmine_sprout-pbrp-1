LOCAL_PATH := device/xiaomi/jasmine

# Architecture
TARGET_ARCH := arm64
TARGET_ARCH_VARIANT := armv8-a
TARGET_CPU_ABI := arm64-v8a
TARGET_CPU_ABI2 :=
TARGET_CPU_VARIANT := kryo

TARGET_2ND_ARCH := arm
TARGET_2ND_ARCH_VARIANT := armv7-a-neon
TARGET_2ND_CPU_ABI := armeabi-v7a
TARGET_2ND_CPU_ABI2 := armeabi
TARGET_2ND_CPU_VARIANT := cortex-a53

# Platform
TARGET_BOARD_PLATFORM := sdm660
TARGET_BOARD_PLATFORM_GPU := qcom-adreno512

# Bootloader
TARGET_BOOTLOADER_BOARD_NAME := sdm660
TARGET_NO_BOOTLOADER := true
TARGET_USES_UEFI := true

# Crypto
TARGET_HW_DISK_ENCRYPTION := true

# Enable CPUSets
ENABLE_CPUSETS := true
ENABLE_SCHEDBOOST := true

# Kernel
BOARD_KERNEL_CMDLINE := androidboot.hardware=qcom msm_rtb.filter=0x37 ehci-hcd.park=3 lpm_levels.sleep_disabled=1 sched_enable_hmp=1 sched_enable_power_aware=1 service_locator.enable=1 swiotlb=1 androidboot.configfs=true androidboot.usbcontroller=a800000.dwc3
BOARD_KERNEL_CMDLINE += androidboot.selinux=permissive
BOARD_KERNEL_BASE := 0x00000000
BOARD_KERNEL_PAGESIZE    := 4096
BOARD_KERNEL_TAGS_OFFSET := 0x00000100
BOARD_RAMDISK_OFFSET     := 0x01000000
TARGET_PREBUILT_KERNEL := $(LOCAL_PATH)/Image.gz-dtb

# Partitions
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 0x04000000
BOARD_FLASH_BLOCK_SIZE := 131072

BOARD_VOLD_EMMC_SHARES_DEV_MAJOR := true
BOARD_BUILD_SYSTEM_ROOT_IMAGE := true
BOARD_ROOT_EXTRA_FOLDERS := bt_firmware dsp firmware persist
BOARD_USES_RECOVERY_AS_BOOT := true
BOARD_HAS_REMOVABLE_STORAGE := true

BOARD_SUPPRESS_SECURE_ERASE := true

TARGET_USERIMAGES_USE_EXT4 := true
BOARD_VENDORIMAGE_FILE_SYSTEM_TYPE := ext4

# Recovery
TARGET_RECOVERY_WIPE := $(LOCAL_PATH)/recovery/root/etc/recovery.wipe

BOARD_HAS_LARGE_FILESYSTEM := true
BOARD_HAS_NO_SELECT_BUTTON := true

# Vendor
TARGET_COPY_OUT_VENDOR := vendor

# TWRP Configuration
AB_OTA_UPDATER := true
TW_THEME := portrait_hdpi
TW_INCLUDE_CRYPTO := true
TW_MAX_BRIGHTNESS := 100
TW_BRIGHTNESS_PATH := "/sys/class/leds/lcd-backlight/brightness"
TW_EXCLUDE_SUPERSU := true
TW_EXTRA_LANGUAGES := true
TW_NO_SCREEN_BLANK := true
TW_INPUT_BLACKLIST := "hbtp_vm"
TARGET_RECOVERY_QCOM_RTC_FIX := true
TARGET_RECOVERY_PIXEL_FORMAT := "RGBX_8888"
RECOVERY_SDCARD_ON_DATA := true
RECOVERY_GRAPHICS_USE_LINELENGTH := true
TARGET_RECOVERY_DEVICE_MODULES += android.hardware.boot@1.0
TW_RECOVERY_ADDITIONAL_RELINK_FILES := ${OUT}/system/lib64/android.hardware.boot@1.0.so

# Security Patch Hack to prevent Anti Rollback
PLATFORM_SECURITY_PATCH := 2025-12-31

# A/B partition device flags
TARGET_NO_KERNEL := false
#TARGET_NO_RECOVERY := true
#BOARD_USES_RECOVERY_AS_BOOT := true
#BOARD_BUILD_SYSTEM_ROOT_IMAGE := true
AB_OTA_UPDATER := true

# Official
PB_OFFICIAL := true
