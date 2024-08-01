#
# Copyright (C) 2024 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

PRODUCT_MAKEFILES := \
    $(LOCAL_DIR)/aosp_virtio_x86_64.mk \
    $(LOCAL_DIR)/cipher_virtio_x86_64.mk \
    $(LOCAL_DIR)/lineage_virtio_x86_64.mk

$(foreach build_type, user userdebug eng, \
    $(eval COMMON_LUNCH_CHOICES += aosp_virtio_x86_64-$(build_type)) \
    $(eval COMMON_LUNCH_CHOICES += cipher_virtio_x86_64-$(build_type)) \
    $(eval COMMON_LUNCH_CHOICES += lineage_virtio_x86_64-$(build_type)))
