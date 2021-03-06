# Copyright (C) 2011 The Android Open Source Project
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

# Inherit common language setup
$(call inherit-product, build/target/product/full_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

# Inherit armani_row vendor setup
$(call inherit-product-if-exists, vendor/lenovo/armani_row/armani_row-vendor.mk)

# Path to overlay files
DEVICE_PACKAGE_OVERLAYS += device/lenovo/armani_row/overlay

# Files needed for recovery image
PRODUCT_COPY_FILES += \
    device/lenovo/armani_row/recovery/sbin/rmt_storage_recovery:/recovery/root/sbin/rmt_storage_recovery \
    device/lenovo/armani_row/recovery/sbin/charger:/recovery/root/sbin/charger \
    device/lenovo/armani_row/recovery/sbin/charge.sh:/recovery/root/sbin/charge.sh \
    device/lenovo/armani_row/recovery/umountusb.sh:root/umountusb.sh

PRODUCT_COPY_FILES += \
    device/lenovo/armani_row/recovery/etc/twrp.fstab:recovery/root/etc/twrp.fstab
