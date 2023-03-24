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

# Inherit from tb8766p1_64_bsp device
$(call inherit-product, device/alps/tb8766p1_64_bsp/device.mk)

PRODUCT_DEVICE := tb8766p1_64_bsp
PRODUCT_NAME := omni_tb8766p1_64_bsp
PRODUCT_BRAND := alps
PRODUCT_MODEL := tb8766p1_64_bsp
PRODUCT_MANUFACTURER := alps

PRODUCT_GMS_CLIENTID_BASE := alps-full_tb8766p1_64_bsp-{country}

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="full_tb8766p1_64_bsp-user 9 PPR1.180610.011 eng.root.20200609.121036 dev-keys"

BUILD_FINGERPRINT := alps/full_tb8766p1_64_bsp/tb8766p1_64_bsp:9/PPR1.180610.011/root06091201:user/dev-keys
