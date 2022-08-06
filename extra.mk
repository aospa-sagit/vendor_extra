# GAPPS
ifeq ($(Lineage_GAPPS),true)
TARGET_UNOFFICIAL_BUILD_ID := GAPPS
$(call inherit-product, vendor/gapps/common/common-vendor.mk)

# Call recording for Google Dialer
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/com.google.android.apps.dialer.call_recording_audio.features.xml:$(TARGET_COPY_OUT_PRODUCT)/etc/permissions/com.google.android.apps.dialer.call_recording_audio.features.xml

PRODUCT_PACKAGES += \
    UpdaterGMSOverlay
else
PRODUCT_PACKAGES += \
    UpdaterOverlay
endif

# SystemUI
PRODUCT_PACKAGES += \
    SystemUIOverlay
