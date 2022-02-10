# add for fp lib and other file copy


BOARD_SEPOLICY_DIRS += vendor/sprd/partner/silead/sepolicy

PRODUCT_COPY_FILES += \
        vendor/sprd/partner/silead/libs/arm/hw/fingerprint.silead.default.so:vendor/lib/hw/fingerprint.silead.default.so \
        vendor/sprd/partner/silead/libs/arm/libfactorylib_silead.so:vendor/lib/libfactorylib_silead.so \
		vendor/sprd/partner/silead/libs/arm/libsl_fp_impl.so:vendor/lib/libsl_fp_impl.so \
        vendor/sprd/partner/silead/init.silead.rc:vendor/etc/init/init.silead.rc   \
		vendor/sprd/partner/silead/silead_sign.elf:/vendor/firmware/silead.elf

ifeq ($(TARGET_ARCH),arm64)
PRODUCT_COPY_FILES += \
        vendor/sprd/partner/silead/libs/arm64/hw/fingerprint.silead.default.so:vendor/lib64/hw/fingerprint.silead.default.so \
        vendor/sprd/partner/silead/libs/arm64/libsl_fp_impl.so:vendor/lib64/libsl_fp_impl.so \
        vendor/sprd/partner/silead/libs/arm64/libfactorylib_silead.so:vendor/lib64/libfactorylib_silead.so
endif
