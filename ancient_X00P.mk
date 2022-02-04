#
# Copyright (C) 2020 The AncientOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/product_launched_with_o.mk)

# Inherit some common AncientOS stuff.
ANCIENT_OFFICIAL := true
$(call inherit-product, vendor/ancient/config/common_full_phone.mk)

# Inherit from X00P device
$(call inherit-product, device/asus/X00P/device.mk)

# Device identifier. This must come after all inclusions
PRODUCT_BRAND := asus
PRODUCT_DEVICE := X00P
PRODUCT_MANUFACTURER := asus
PRODUCT_NAME := ancient_X00P
PRODUCT_MODEL := ASUS_X00PD

PRODUCT_GMS_CLIENTID_BASE := android-asus

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="WW_X00PD-user 8.0.0 OPR1.170623.032 15.00.1801.31 release-keys"

# Set BUILD_FINGERPRINT variable to be picked up by both system and vendor build.prop
BUILD_FINGERPRINT := asus/WW_X00PD/ASUS_X00P_2:8.0.0/OPR1.170623.032/15.00.1801.31:user/release-keys
