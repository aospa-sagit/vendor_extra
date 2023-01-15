# GAPPS
ifeq ($(Lineage_GAPPS),true)
TARGET_UNOFFICIAL_BUILD_ID := GAPPS
$(call inherit-product, vendor/gapps/common/common-vendor.mk)

PRODUCT_PACKAGES += \
    UpdaterGMSOverlay
else
PRODUCT_PACKAGES += \
    UpdaterOverlay
endif

# SystemUI
PRODUCT_PACKAGES += \
    SystemUIOverlay
