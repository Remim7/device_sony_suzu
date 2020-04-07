#
# Copyright (C) 2016 The CyanogenMod Project
# Copyright (C) 2017-2018 The LineageOS Project
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

# Inherit from suzu device
$(call inherit-product, device/sony/suzu/device.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

PRODUCT_AAPT_CONFIG := normal
PRODUCT_AAPT_PREBUILT_DPI := xxhdpi
PRODUCT_AAPT_PREF_CONFIG := xxhdpi

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := lineage_suzu
PRODUCT_DEVICE := suzu
PRODUCT_BRAND := sony
PRODUCT_MODEL := Xperia X
PRODUCT_MANUFACTURER := sony

PRODUCT_GMS_CLIENTID_BASE := android-sony

PRODUCT_BUILD_PROP_OVERRIDES += \
    TARGET_DEVICE="suzu" \
    PRODUCT_NAME="suzu" \
    PRIVATE_BUILD_DESC="suzu-user 8.0.0 OPR1.170623.026 1 dev-keys"

BUILD_FINGERPRINT := "Sony/suzu/suzu:8.0.0/OPR1.170623.026/1:user/dev-keys"

TARGET_VENDOR := sony
