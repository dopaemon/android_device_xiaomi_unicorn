#
# Copyright (C) 2022-2024 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from unicorn device
$(call inherit-product, device/xiaomi/unicorn/device.mk)

# Inherit from common VoltageOS configuration
TARGET_DISABLE_EPPE := true
$(call inherit-product, vendor/voltage/config/common_full_phone.mk)

TARGET_BOOT_ANIMATION_RES := 1080
VOLTAGE_BUILD_TYPE := UNOFFICIAL

PRODUCT_NAME := voltage_unicorn
PRODUCT_DEVICE := unicorn
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := 2206122SC

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="unicorn_cn-user 14 UKQ1.231003.002 V816.0.3.0.ULECNXM release-keys"

BUILD_FINGERPRINT := Xiaomi/unicorn_cn/unicorn:14/UKQ1.231003.002/V816.0.3.0.ULECNXM:user/release-keys

# Miui Camera for unicorn
$(call inherit-product-if-exists, vendor/xiaomi/miuicamera/config.mk)
