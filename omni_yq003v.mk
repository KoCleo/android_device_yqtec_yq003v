#
# Copyright (C) 2023 The Android Open Source Project
# Copyright (C) 2023 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/omni/config/common.mk)

# Inherit from yq003v device
$(call inherit-product, device/yqtec/yq003v/device.mk)

PRODUCT_DEVICE := yq003v
PRODUCT_NAME := omni_yq003v
PRODUCT_BRAND := yqtec
PRODUCT_MODEL := yq003v
PRODUCT_MANUFACTURER := yqtec

PRODUCT_GMS_CLIENTID_BASE := android-yqtec

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="full_joyasz8163_e-user 5.1 LMY47I 1542772140 test-keys"

BUILD_FINGERPRINT := alps/full_joyasz8163_e/joyasz8163_e:5.1/LMY47I/1542772140:user/test-keys
