#
# Copyright (C) 2017-2020 The LineageOS Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
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

# Inherit from odessa device
$(call inherit-product, device/motorola/odessa/device.mk)

# Inherit some common LineageOS stuff
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Feature flags
TARGET_SUPPORTS_QUICK_TAP := true
TARGET_DISABLE_EPPE := true
TARGET_BOOT_ANIMATION_RES := 1080
TARGET_USES_MINI_GAPPS := true

# Device identifiers
PRODUCT_NAME := lineage_odessa
PRODUCT_DEVICE := odessa
PRODUCT_BRAND := motorola
PRODUCT_MODEL := moto g(9) plus
PRODUCT_MANUFACTURER := motorola

# GMS Client ID
PRODUCT_GMS_CLIENTID_BASE := android-motorola

# Display density
# The build system automatically selects the best density.
# Specifying it here is often redundant unless you need a specific override.
# PRODUCT_AAPT_CONFIG := xxxhdpi
# PRODUCT_AAPT_PREF_CONFIG := xxxhdpi

# ===================================================================
# CORREÇÃO PRINCIPAL AQUI
# ===================================================================
# Define build fingerprint and description as direct Make variables.
# This avoids the "isn't a valid prop override" error.
# This should match a stock firmware build for Play Integrity.

BUILD_FINGERPRINT := "motorola/odessa_retail/odessa:11/RPAS31.Q2-59-17-4-5-5/af8e3:user/release-keys"
PRIVATE_BUILD_DESC := "odessa_retail-user 11 RPAS31.Q2-59-17-4-5-5 af8e3 release-keys"

# We can use PRODUCT_PROPERTY_OVERRIDES to set the final property if needed,
# but setting PRIVATE_BUILD_DESC is the cleaner way to set ro.build.description.
# The build system uses PRIVATE_BUILD_DESC to generate ro.build.description.
# Example of the less clean way (for reference only
