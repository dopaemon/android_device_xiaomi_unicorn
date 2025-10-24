#
# Copyright (C) 2022-2024 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from unicorn device
$(call inherit-product, device/xiaomi/unicorn/device.mk)

# Inherit from common lineage configuration
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# DerpFest
TARGET_DISABLE_EPPE := true
DERPFEST_BUILD_TYPE := UNOFFICIAL
DERPFEST_BUILD_VARIANT := Stable
TARGET_INCLUDE_LIVE_WALLPAPERS := true
TARGET_USES_PICO_GAPPS := true

PRODUCT_NAME := lineage_unicorn
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
