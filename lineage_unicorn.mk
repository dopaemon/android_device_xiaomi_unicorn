#
# Copyright (C) 2022-2024 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from unicorn device
$(call inherit-product, device/xiaomi/unicorn/device.mk)

# Inherit from common lineage configuration
TARGET_DISABLE_EPPE := true
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Device config
TARGET_HAS_UDFPS := true
TARGET_ENABLE_BLUR := true
TARGET_EXCLUDES_AUDIOFX := true
TARGET_FACE_UNLOCK_SUPPORTED := true

# GAPPS
# TARGET_BUILD_PACKAGE options:
# 1 - vanilla (default)
# 2 - microg
# 3 - gapps
WITH_GMS := true
TARGET_BUILD_PACKAGE := 3
TARGET_SUPPORTS_GOOGLE_RECORDER := true
TARGET_SUPPORTS_QUICK_TAP := true
TARGET_SUPPORTS_CALL_RECORDING := true

TARGET_INCLUDE_PIXEL_LAUNCHER := false
TARGET_INCLUDE_STOCK_ARCORE := true
TARGET_INCLUDE_LIVE_WALLPAPERS := false

# TARGET_LAUNCHER options:
# 1 - stock (default)
# 2 - lawnchair
# 3 - pixel (valid only on gapps builds)
TARGET_LAUNCHER := 2

# Debugging
TARGET_INCLUDE_MATLOG := false

# Maintainer
ALPHA_BUILD_TYPE := UNOFFICIAL
ALPHA_MAINTAINER := KernelPanix

PRODUCT_NAME := lineage_unicorn
PRODUCT_DEVICE := unicorn
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := 2206122SC

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="unicorn_cn-user 14 UKQ1.231003.002 V816.0.3.0.ULECNXM release-keys"

BUILD_FINGERPRINT := Xiaomi/unicorn_cn/unicorn:14/UKQ1.231003.002/V816.0.3.0.ULECNXM:user/release-keys
