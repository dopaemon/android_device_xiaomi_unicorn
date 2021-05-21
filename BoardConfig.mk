#
# Copyright (C) 2022-2024 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from xiaomi sm8450-common
include device/xiaomi/sm8450-common/BoardConfigCommon.mk

# Inherit from the proprietary version
include vendor/xiaomi/unicorn/BoardConfigVendor.mk

DEVICE_PATH := device/xiaomi/unicorn

# Screen density
TARGET_SCREEN_DENSITY := 560