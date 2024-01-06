#
# Copyright (C) 2024 The Android Open Source Project
# Copyright (C) 2024 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/omni/config/common.mk)

# Inherit from NX651J device
$(call inherit-product, device/nubia/NX651J/device.mk)

PRODUCT_DEVICE := NX651J
PRODUCT_NAME := omni_NX651J
PRODUCT_BRAND := nubia
PRODUCT_MODEL := NX651J
PRODUCT_MANUFACTURER := nubia

PRODUCT_GMS_CLIENTID_BASE := android-zte

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="NX651J-user 11 RKQ1.200826.002 nubia.20210706.180456 release-keys"

BUILD_FINGERPRINT := nubia/NX651J/NX651J:11/RKQ1.200826.002/nubia.20210706.180456:user/release-keys
