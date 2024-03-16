#
# Copyright (C) 2024 The TWRP Open Source Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/base.mk)

# Inherit from our custom product configuration
$(call inherit-product, vendor/twrp/config/common.mk)

# Inherit from vivo 1901 device
$(call inherit-product, device/vivo/1901/device.mk)

PRODUCT_DEVICE := 1901
PRODUCT_NAME := twrp_1901
PRODUCT_BRAND := vivo
PRODUCT_MODEL := vivo 1901
PRODUCT_MANUFACTURER := vivo

PRODUCT_GMS_CLIENTID_BASE := android-vivo-rev1

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="full_k62v1_64_bsp-user 11 RP1A.200720.012 eng.compil.20220218.164640 release-keys"

BUILD_FINGERPRINT := vivo/1901/1901:11/RP1A.200720.012/compiler0218164247:user/release-keys
