#
# Copyright (C) 2019 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from guacamole device
$(call inherit-product, device/oneplus/guacamole/device.mk)

# Inherit some common Rice stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# OnePlus apps
$(call inherit-product-if-exists, vendor/oneplus/apps/apps-vendor.mk)

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := lineage_guacamole
PRODUCT_DEVICE := guacamole
PRODUCT_BRAND := OnePlus
PRODUCT_MODEL := OnePlus 7 Pro
PRODUCT_MANUFACTURER := OnePlus

PRODUCT_AAPT_CONFIG := xxxhdpi
PRODUCT_AAPT_PREF_CONFIG := xxxhdpi
PRODUCT_CHARACTERISTICS := nosdcard

# Rice Props
RICE_CHIPSET := "msmnile"
RICE_MAINTAINER := "Master"
SUSHI_BOOTANIMATION := 1440
TARGET_BUILD_APERTURE_CAMERA := true
TARGET_ENABLE_BLUR := true
TARGET_HAS_UDFPS := true
TARGET_USE_PIXEL_FINGERPRINT := true
WITH_GMS := true
TARGET_USE_GOOGLE_TELEPHONY := true
TARGET_CORE_GMS_EXTRAS := true

# Boot animation
TARGET_SCREEN_HEIGHT := 3120
TARGET_SCREEN_WIDTH := 1440
TARGET_BOOT_ANIMATION_RES := 1440

# Build info
BUILD_FINGERPRINT := OnePlus/OnePlus7Pro/OnePlus7Pro:12/SKQ1.211113.001/P.202212242003:user/release-keys
PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="OnePlus7Pro-user 12 SKQ1.211113.001 P.202212242003 release-keys" \
    PRODUCT_DEVICE=OnePlus7Pro \
    PRODUCT_NAME=guacamole

PRODUCT_GMS_CLIENTID_BASE := android-oneplus
