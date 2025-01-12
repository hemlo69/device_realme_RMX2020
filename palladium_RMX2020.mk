#
# Copyright (C) 2018-2022 Palladium
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from device makefile
$(call inherit-product, device/realme/RMX2020/device.mk)

# Inherit some common Palladium stuff.
$(call inherit-product, vendor/palladium/config/common.mk)

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := palladium_RMX2020
PRODUCT_DEVICE := RMX2020
PRODUCT_BRAND := realme
PRODUCT_MODEL := realme Monet
PRODUCT_MANUFACTURER := realme

#Official
#PALLADIUM_BUILD_TYPE := OFFICIAL
#PRODUCT_PRODUCT_PROPERTIES += \
    #ro.palladium.maintainer=Nitesh696969

# Build info
BUILD_FINGERPRINT := "google/coral/coral:12/SP2A.220405.003/8210211:user/release-keys"
PRODUCT_BUILD_PROP_OVERRIDES += \
    TARGET_DEVICE=RMX2020 \
    PRODUCT_NAME=RMX2020 \
    PRIVATE_BUILD_DESC="RMX2020-user 10 QP1A.190711.020 1580942954 release-keys"

PRODUCT_GMS_CLIENTID_BASE := android-oppo

PRODUCT_PROPERTY_OVERRIDES += \
    ro.build.fingerprint=$(BUILD_FINGERPRINT)
