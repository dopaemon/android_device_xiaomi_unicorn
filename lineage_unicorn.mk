#
# Copyright (C) 2022-2024 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from unicorn device
$(call inherit-product, device/xiaomi/unicorn/device.mk)

# Inherit from common lineage configuration
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# LunarisAOSP
TARGET_DISABLE_EPPE := true
TARGET_OPTIMIZED_DEXOPT := true
WITH_BCR := true
WITH_GMS := true
TARGET_USES_CORE_GAPPS := true
TARGET_CUSTOM_UDFPS := true
TARGET_BOOT_ANIMATION_RES := 1440
TARGET_SUPPORTED_REFRESH_RATES := 60,120

PRODUCT_NAME := lineage_unicorn
PRODUCT_DEVICE := unicorn
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := 2206122SC

PRODUCT_BUILD_PROP_OVERRIDES += \
    BuildDesc="unicorn-user 15 AQ3A.250226.002 OS3.0.3.0.VLECNXM release-keys" \
    BuildFingerprint=Xiaomi/unicorn/unicorn:15/AQ3A.250226.002/OS3.0.3.0.VLECNXM:user/release-keys \
    DeviceProduct=unicorn \
    SystemName=unicorn

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi
