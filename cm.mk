# Inherit CM common GSM stuff.
$(call inherit-product, vendor/cm/config/gsm.mk)

# Inherit CM common Phone stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Inherit device configuration.
$(call inherit-product, device/lenovo/armani_row/armani_row.mk)

# Device identifier.
PRODUCT_DEVICE := armani_row
PRODUCT_NAME := cm_armani_row
PRODUCT_BRAND := Lenovo
PRODUCT_MANUFACTURER := LENOVO
PRODUCT_MODEL := Lenovo A706
