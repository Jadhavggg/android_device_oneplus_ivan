#
# SPDX-License-Identifier: Apache-2.0
#

LOCAL_PATH := $(call my-dir)

ifeq ($(TARGET_DEVICE),OP555BL1)

$(call add-radio-file,releasetools/dynamic-remove-oplus)

include $(call all-makefiles,$(LOCAL_PATH))
endif
