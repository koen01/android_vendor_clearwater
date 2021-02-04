# Matlog
PRODUCT_PACKAGES += \
    MatLog

# Copy some extra permissions
PRODUCT_COPY_FILES += \
    vendor/clearwater/permissions/privapp-permissions-clearwater.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/permissions/privapp-permissions-clearwater.xml

# Face Unlock
TARGET_FACE_UNLOCK_SUPPORTED := false
ifneq ($(TARGET_DISABLE_ALTERNATIVE_FACE_UNLOCK), true)
PRODUCT_PACKAGES += \
    FaceUnlockService
TARGET_FACE_UNLOCK_SUPPORTED := true
endif
PRODUCT_SYSTEM_DEFAULT_PROPERTIES += \
    ro.face.moto_unlock_service=$(TARGET_FACE_UNLOCK_SUPPORTED)
