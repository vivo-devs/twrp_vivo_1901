#
# Copyright (C) 2023 The TWRP Open Source Project
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

# Bypass anti-rollback ROMs protection
# Set build date to Jan 1 2009 00:00:00
PRODUCT_PROPERTY_OVERRIDES += \
    ro.build.date.utc=1230768000