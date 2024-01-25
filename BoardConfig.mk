#
# Copyright (C) 2023 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

DEVICE_PATH := device/xiaomi/sakura

# Inherit from common msm8953-common
include device/xiaomi/msm8953-common/BoardConfigCommon.mk

# Kernel
TARGET_KERNEL_CONFIG += xiaomi/sakura.config

# Display
TARGET_SCREEN_DENSITY := 420

# Partitions
BOARD_CACHEIMAGE_PARTITION_SIZE := 268435456
BOARD_CACHEIMAGE_FILE_SYSTEM_TYPE := ext4
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 67108864
BOARD_VENDORIMAGE_PARTITION_SIZE := 872415232
BOARD_VENDORIMAGE_FILE_SYSTEM_TYPE := ext4
TARGET_COPY_OUT_VENDOR := vendor

# Power
TARGET_TAP_TO_WAKE_NODE := "/proc/touchpanel/wakeup_gesture"

# Properties
TARGET_VENDOR_PROP += $(DEVICE_PATH)/vendor.prop

# Security Patch Level
VENDOR_SECURITY_PATCH := 2021-07-01

# Inherit the proprietary files
include vendor/xiaomi/daisy/BoardConfigVendor.mk
