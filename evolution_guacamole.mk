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

# Inherit some common Evolution stuff.
$(call inherit-product, vendor/evolution/config/common_full_phone.mk)

# Moto Dolby
$(call inherit-product, vendor/motorola/dolby/dolby-vendor.mk)

# OnePlus apps
$(call inherit-product-if-exists, vendor/oneplus/apps/apps-vendor.mk)

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := evolution_guacamole
PRODUCT_DEVICE := guacamole
PRODUCT_BRAND := OnePlus
PRODUCT_MODEL := OnePlus 7 Pro
PRODUCT_MANUFACTURER := OnePlus

PRODUCT_SYSTEM_NAME := OnePlus7Pro
PRODUCT_SYSTEM_DEVICE := OnePlus7Pro

PRODUCT_AAPT_CONFIG := xxxhdpi
PRODUCT_AAPT_PREF_CONFIG := xxxhdpi
PRODUCT_CHARACTERISTICS := nosdcard

# Evolution Stuff
DEVICE_MAINTAINER := MHMDeveloper
EVO_BUILD_TYPE := SPECIAL
TARGET_SUPPORTS_QUICK_TAP  := true
TARGET_SHIP_PREBUILT_APEX := true

# Boot animation
TARGET_SCREEN_HEIGHT := 3120
TARGET_SCREEN_WIDTH := 1440
TARGET_BOOT_ANIMATION_RES := 1440

# Build info
BUILD_FINGERPRINT := "OnePlus/OnePlus7Pro/OnePlus7Pro:11/RKQ1.201022.002/2204061044:user/release-keys"
PRODUCT_BUILD_PROP_OVERRIDES += \
    TARGET_DEVICE=OnePlus7Pro \
    TARGET_PRODUCT=guacamole

PRODUCT_GMS_CLIENTID_BASE := android-oneplus
