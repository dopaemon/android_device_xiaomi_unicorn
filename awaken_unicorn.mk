#
# Copyright (C) 2022-2024 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from unicorn device
$(call inherit-product, device/xiaomi/unicorn/device.mk)

# Inherit from common awaken configuration
TARGET_DISABLE_EPPE := true
$(call inherit-product, vendor/awaken/config/common_full_phone.mk)

# Boot Animation Resolution
TARGET_BOOT_ANIMATION_RES := 1080

# Google Recorder
TARGET_SUPPORTS_GOOGLE_RECORDER := true

# Google Assistant
TARGET_SUPPORTS_NEXT_GEN_ASSISTANT := true

# Pixel Charger
USE_PIXEL_CHARGER := true

# UnOfficial
AWAKEN_BUILD_TYPE := UNOFFICIAL

# Face unlock
TARGET_FACE_UNLOCK_SUPPORTED := true

# Gapps
WITH_GMS := true

# Other
TARGET_ENABLE_BLUR := true
TARGET_SUPPORTS_QUICK_TAP := true
TARGET_HAS_UDFPS := true
TARGET_USE_PIXEL_FINGERPRINT := true

PRODUCT_NAME := awaken_unicorn
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
