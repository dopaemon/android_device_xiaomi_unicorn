#
# Copyright (C) 2022-2024 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from unicorn device
$(call inherit-product, device/xiaomi/unicorn/device.mk)

# Inherit from common lineage configuration
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Build
TARGET_DISABLE_EPPE := true
MISTOS_MAINTAINER := KernelPanix
WITH_GMS := true
TARGET_ENABLE_BLUR := true
TARGET_SUPPORTS_QUICK_TAP := true
BYPASS_CHARGE_SUPPORTED := false
TARGET_DEFAULT_PIXEL_LAUNCHER := true

PRODUCT_SYSTEM_DEFAULT_PROPERTIES += \
    ro.mist.display=1440 x 3200, 120 hz
    ro.mist.battery=4600mah
    ro.mist.soc=Snapdragon® 8+ Gen 1
    ro.mist.camera=50MP + 50MP + 50MP
    ro.mist.front=32MP
    ro.mist.platform=SM8450
    ro.mist.screen=6.73' AMOLED
    ro.mist.device.name=Xiaomi 12 Pro

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
