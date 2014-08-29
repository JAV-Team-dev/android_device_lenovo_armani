# Inherit CM common GSM stuff.
$(call inherit-product, vendor/cm/config/gsm.mk)

# Inherit CM common Phone stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Inherit device configuration.
$(call inherit-product, device/lenovo/armani/armani.mk)

# Device identifier.
PRODUCT_DEVICE := armani
PRODUCT_NAME := cm_armani
PRODUCT_BRAND := Lenovo
PRODUCT_MODEL := Lenovo A706
PRODUCT_MANUFACTURER := LENOVO
