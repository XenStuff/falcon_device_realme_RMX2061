#
# Copyright (C) 2020 The DotOS
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from RMX2061 device
$(call inherit-product, device/realme/RMX2061/device.mk)

# Hotword
$(call inherit-product, vendor/hotword/google.mk)

# Inherit some common stuff
$(call inherit-product, vendor/404/config/common.mk)

# Device identifier
PRODUCT_NAME := p404_RMX2061
PRODUCT_DEVICE := RMX2061
PRODUCT_BRAND := Realme
PRODUCT_MODEL := Realme 6 Pro
PRODUCT_MANUFACTURER := Realme

PRODUCT_GMS_CLIENTID_BASE := android-realme

ifeq ($(WITH_GAPPS),true)
P404_BUILDTYPE := SHINKA-GAPPS
else
P404_BUILDTYPE := SHINKA-VANILLA
endif
