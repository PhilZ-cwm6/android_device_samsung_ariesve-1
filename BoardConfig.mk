# Copyright (C) 2012 The CyanogenMod Project
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

#
# This file sets variables that control the way modules are built
# thorughout the system. It should not be used to conditionally
# disable makefiles (the proper mechanism to control what gets
# included in a build is to use PRODUCT_PACKAGES in a product
# definition file).
#

# WARNING: This line must come *before* including the proprietary
# variant, so that it gets overwritten by the parent (which goes
# against the traditional rules of inheritance).
USE_CAMERA_STUB := true

# Vendor files
-include vendor/samsung/ariesve/BoardConfigVendor.mk

# Kernel header
TARGET_SPECIFIC_HEADER_PATH := device/samsung/ariesve/include

# Platform
TARGET_BOOTLOADER_BOARD_NAME := ariesve
TARGET_OTA_ASSERT_DEVICE := ariesve,GT-I9001
TARGET_BOARD_PLATFORM := msm7x30
TARGET_BOARD_PLATFORM_GPU := qcom-adreno200
TARGET_NO_BOOTLOADER := true
TARGET_NO_RADIOIMAGE := true
TARGET_NO_INITLOGO := true

# Architecture
TARGET_ARCH := arm
ARCH_ARM_HAVE_NEON := true
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_CPU_VARIANT := scorpion
TARGET_USE_O3 := true
TARGET_GCC_VERSION_EXP := 4.7.4

# Dalvik startup with low memory footprint
TARGET_ARCH_LOWMEM := true

# Hardware
BOARD_HARDWARE_CLASS := device/samsung/ariesve/cmhw

# Screens dimension
TARGET_SCREEN_HEIGHT := 800
TARGET_SCREEN_WIDTH := 480

# Kernel
BOARD_KERNEL_BASE := 0x00400000
BOARD_KERNEL_PAGESIZE := 4096
#TARGET_KERNEL_SOURCE := kernel/samsung/msm7x30/
#TARGET_KERNEL_CONFIG := ariesve_defconfig
TARGET_PREBUILT_KERNEL := device/samsung/ariesve/prebuilt/zImage

# WiFi
BOARD_HAVE_SAMSUNG_WIFI          := true
WIFI_BAND                        := 802_11_ABG
WPA_SUPPLICANT_VERSION           := VER_0_8_X
BOARD_WPA_SUPPLICANT_DRIVER      := NL80211
BOARD_WPA_SUPPLICANT_PRIVATE_LIB := lib_driver_cmd_bcmdhd
BOARD_HOSTAPD_DRIVER             := NL80211
BOARD_HOSTAPD_PRIVATE_LIB        := lib_driver_cmd_bcmdhd
BOARD_WLAN_DEVICE                := bcmdhd
WIFI_DRIVER_MODULE_PATH          := "/lib/modules/dhd.ko"
WIFI_DRIVER_MODULE_NAME          := "dhd"
WIFI_DRIVER_MODULE_ARG           := "firmware_path=/vendor/firmware/fw_bcmdhd.bin nvram_path=/vendor/firmware/nvram_net.txt"
WIFI_DRIVER_MODULE_AP_ARG        := "firmware_path=/vendor/firmware/fw_bcmdhd_apsta.bin nvram_path=/vendor/firmware/nvram_net.txt"
WIFI_DRIVER_FW_PATH_PARAM        := "/sys/module/dhd/parameters/firmware_path"
WIFI_DRIVER_FW_PATH_STA          := "/vendor/firmware/fw_bcmdhd.bin"
WIFI_DRIVER_FW_PATH_AP           := "/vendor/firmware/fw_bcmdhd_apsta.bin"

# BT
BOARD_HAVE_BLUETOOTH := true
BOARD_HAVE_BLUETOOTH_BCM := true
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := device/samsung/ariesve/bluetooth
BOARD_BLUEDROID_VENDOR_CONF := device/samsung/ariesve/bluetooth/vnd_ariesve.txt

# RIL
BOARD_MOBILEDATA_INTERFACE_NAME = "pdp0"
BOARD_USES_LIBSECRIL_STUB := true
BOARD_USES_LEGACY_RIL := true
BOARD_RIL_CLASS := ../../../device/samsung/ariesve/ril/

# GPS
BOARD_USES_QCOM_LIBRPC := true
BOARD_USES_QCOM_HARDWARE := true
BOARD_USES_QCOM_LIBS := true
BOARD_USES_QCOM_GPS := true
BOARD_VENDOR_QCOM_GPS_LOC_API_HARDWARE := msm7x30
BOARD_VENDOR_QCOM_GPS_LOC_API_AMSS_VERSION := 50000

# Audio
BOARD_HAVE_SAMSUNG_AUDIO := true
BOARD_USES_QCOM_AUDIO_RESETALL := true
TARGET_QCOM_AUDIO_VARIANT := caf
BOARD_USES_QCOM_AUDIO_VOIPMUTE := true

# EGL
BOARD_EGL_CFG := device/samsung/ariesve/config/egl.cfg
BOARD_EGL_NEEDS_LEGACY_FB := true
BOARD_ALLOW_EGL_HIBERNATION := true
USE_OPENGL_RENDERER := true

# Display
BOARD_ADRENO_DECIDE_TEXTURE_TARGET := true
TARGET_USES_C2D_COMPOSITION := true
TARGET_FORCE_CPU_UPLOAD := true
TARGET_PROVIDES_LIBLIGHT := true
BOARD_USE_LEGACY_TOUCHSCREEN := true
TARGET_QCOM_DISPLAY_VARIANT := legacy
TARGET_QCOM_MEDIA_VARIANT := legacy

# QCOM enhanced A/V
TARGET_ENABLE_QC_AV_ENHANCEMENTS := true
TARGET_ENABLE_DEFAULT_SMOOTHSTREAMING := true

# Memory allocation
TARGET_USES_ION := false

# Power HAL
TARGET_PROVIDES_POWERHAL := true

# Camera
COMMON_GLOBAL_CFLAGS += -DSAMSUNG_CAMERA_LEGACY
COMMON_GLOBAL_CFLAGS += -DBINDER_COMPAT
BOARD_USES_QCOM_LEGACY_CAM_PARAMS := true
BOARD_USES_LEGACY_OVERLAY := true
BOARD_NEEDS_MEMORYHEAPPMEM := true
BOARD_CAMERA_USE_MM_HEAP := true
#TARGET_DISABLE_ARM_PIE := true

# QCOM
COMMON_GLOBAL_CFLAGS += -DQCOM_HARDWARE
BOARD_USES_QCOM_HARDWARE := true
BOARD_VENDOR_QCOM_AMSS_VERSION := 6225

# Sensors
BOARD_USE_LEGACY_SENSORS_FUSION := false

# Bootanimation
TARGET_BOOTANIMATION_PRELOAD := true
TARGET_BOOTANIMATION_TEXTURE_CACHE := true
TARGET_BOOTANIMATION_USE_RGB565 := true

# FM Radio
BOARD_HAVE_FM_RADIO := true
BOARD_GLOBAL_CFLAGS += -DHAVE_FM_RADIO
BOARD_FM_DEVICE := si4709

## Browser & WebKit
JS_ENGINE := v8
HTTP := chrome
WITH_JIT := true
ENABLE_JSC_JIT := true
ENABLE_WEBGL := true

# USB mass storage
TARGET_USE_CUSTOM_LUN_FILE_PATH := /sys/devices/platform/msm_hsusb/gadget/lun%d/file

# Partitions
# For the Galaxy S Plus, these are calculated from /proc/partitions
BOARD_BOOTIMAGE_PARTITION_SIZE := 5242880
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 7864320
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 545259520
BOARD_USERDATAIMAGE_PARTITION_SIZE := 1447034880
BOARD_CACHEIMAGE_PARTITION_SIZE := 104857600
BOARD_FLASH_BLOCK_SIZE := 4096

# Target filesystem
TARGET_USERIMAGES_USE_EXT4 := true

# Vold
BOARD_VOLD_EMMC_SHARES_DEV_MAJOR := true
BOARD_VOLD_MAX_PARTITIONS := 28

# Custom recovery files
BOARD_CUSTOM_RECOVERY_KEYMAPPING := ../../device/samsung/ariesve/recovery/recovery_keys.c
TARGET_PREBUILT_RECOVERY_KERNEL := device/samsung/ariesve/recovery/zImage
TARGET_RECOVERY_FSTAB := device/samsung/ariesve/ramdisk/fstab.qcom

# Partition flags for CWM/TWRP
BOARD_HAS_SDCARD_INTERNAL := true
BOARD_USES_MMCUTILS := true
BOARD_HAS_NO_MISC_PARTITION := true

# Button configuration
BOARD_HAS_NO_SELECT_BUTTON := true
TW_CUSTOM_POWER_BUTTON := 107

# Recovery display flags
DEVICE_RESOLUTION := 480x800
TARGET_RECOVERY_PIXEL_FORMAT := "RGBX_8888"

# TWRP brightness flags
TW_BRIGHTNESS_PATH := /sys/devices/platform/msm_fb.196609/leds/lcd-backlight/brightness
TW_MAX_BRIGHTNESS := 255

# TWRP mount points
TW_INTERNAL_STORAGE_PATH := "/sdcard"
TW_INTERNAL_STORAGE_MOUNT_POINT := "sdcard"
TW_EXTERNAL_STORAGE_PATH := "/external_sd"
TW_EXTERNAL_STORAGE_MOUNT_POINT := "external_sd"

# Misc TWRP flags
TW_NO_REBOOT_BOOTLOADER := true
TW_HAS_DOWNLOAD_MODE := true
TW_USE_MODEL_HARDWARE_ID_FOR_DEVICE_ID := true
TW_INCLUDE_FB2PNG := true
