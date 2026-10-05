#
# Copyright (C) 2018-2020 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from akatsuki device
$(call inherit-product, device/sony/akatsuki/device.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Setup keystore
-include vendor/lineage-priv/keys/keys.mk

PRODUCT_NAME := lineage_akatsuki
PRODUCT_DEVICE := akatsuki
PRODUCT_MANUFACTURER := Sony
PRODUCT_BRAND := Sony
PRODUCT_MODEL := Xperia XZ3

TARGET_BOOT_ANIMATION_RES := 1080
TARGET_ENABLE_BLUR := true
TARGET_DISABLE_EPPE := true

PRODUCT_GMS_CLIENTID_BASE := android-sony-mobile

PRODUCT_BUILD_PROP_OVERRIDES += \
    BuildDesc="H8416-user 10 52.1.A.3.92 052001A003009202694550183 release-keys" \
    BuildFingerprint=Sony/H8416/H8416:10/52.1.A.3.92/052001A003009202694550183:user/release-keys
