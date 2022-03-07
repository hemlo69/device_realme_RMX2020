#
# Copyright (C) 2020 Android Open Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from vendor/extras
$(call inherit-product, vendor/extras/extras.mk)


# Inherit from device makefile
$(call inherit-product, device/realme/RMX2020/device.mk)

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := RMX2020
PRODUCT_DEVICE := RMX2020
PRODUCT_BRAND := realme
PRODUCT_MODEL := realme Monet
PRODUCT_MANUFACTURER := realme
TARGET_BOOT_ANIMATION_RES := 720
PRODUCT_GMS_CLIENTID_BASE := android-oppo
