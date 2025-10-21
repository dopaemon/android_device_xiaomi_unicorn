#
# Copyright (C) 2022-2024 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from unicorn device
$(call inherit-product, device/xiaomi/unicorn/device.mk)

# Inherit from common voltage configuration
$(call inherit-product, vendor/voltage/config/common_full_phone.mk)

# Voltage Flags
TARGET_FACE_UNLOCK_SUPPORTED := true
VOLTAGE_BUILD_TYPE := UNOFFICIAL
EXTRA_UDFPS_ANIMATIONS := true

# Boost Framework
VOLTAGE_CPU_SMALL_CORES := 0,1,2
VOLTAGE_CPU_BIG_CORES   := 3,4,5,6,7
VOLTAGE_ALL_CORES       := 0-7
VOLTAGE_CPU_SYS_BG      := 0-3
VOLTAGE_CPU_BG          := 0-2
VOLTAGE_CPU_FG          := 0-5
VOLTAGE_CPU_LIMIT_BG    := 0-1
VOLTAGE_CPU_LIMIT_UI    := 0-2
VOLTAGE_CPU_DISPLAY     := 0-5

PRODUCT_NAME := voltage_unicorn
PRODUCT_DEVICE := unicorn
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := 2206122SC

PRODUCT_BUILD_PROP_OVERRIDES += \
    BuildDesc="unicorn-user 15 AQ3A.241006.001 OS2.0.208.0.VLECNXM release-keys" \
    BuildFingerprint=Xiaomi/unicorn/unicorn:15/AQ3A.241006.001/OS2.0.208.0.VLECNXM:user/release-keys \
    DeviceProduct=unicorn \
    SystemName=unicorn

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi
