#
# Copyright (C) 2019 The LineageOS Project
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
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base.mk)

# Inherit from dreamlte device
$(call inherit-product, device/samsung/dreamlte/device.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Havoc stuff.
$(call inherit-product, vendor/havoc/config/common_full_phone.mk)

# Boot animation res
TARGET_SCREEN_HEIGHT := 2960
TARGET_SCREEN_WIDTH := 1440

# Vendor security patch level
VENDOR_SECURITY_PATCH := 2020-04-01

# Maintainer Prop
PRODUCT_PROPERTY_OVERRIDES += \
    ro.havoc.maintainer=muhash

# $(call inherit-product-if-exists, vendor/gapps/config.mk)
# TARGET_GAPPS_ARCH := arm64

# Device identifier. This must come after all inclusions
PRODUCT_DEVICE := dreamlte
PRODUCT_NAME := havoc_dreamlte
PRODUCT_BRAND := samsung
PRODUCT_MODEL := SM-G950F
PRODUCT_MANUFACTURER := samsung

PRODUCT_GMS_CLIENTID_BASE := android-samsung

# Use the latest approved GMS identifiers
PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=dreamltexx \
    PRIVATE_BUILD_DESC="dreamltexx-user 8.0.0 R16NW G950FXXU1CRC7 release-keys"

BUILD_FINGERPRINT := samsung/dreamltexx/dreamlte:8.0.0/R16NW/G950FXXU1CRC7:user/release-keys
