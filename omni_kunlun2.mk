#
# Copyright 2017 The Android Open Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

# Release name
PRODUCT_RELEASE_NAME := kunlun2

$(call inherit-product, build/target/product/embedded.mk)

# Inherit from our custom product configuration
$(call inherit-product, vendor/omni/config/common.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := kunlun2
PRODUCT_NAME := omni_kunlun2
PRODUCT_BRAND := Lenovo
PRODUCT_MODEL := Lenovo L38111
PRODUCT_MANUFACTURER := Lenovo

#Instead of .prop
PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=kunlun2 \
    BUILD_PRODUCT=kunlun2 \
    TARGET_DEVICE=kunlun2

# enable stock zip packages flash
PRODUCT_DEFAULT_PROPERTY_OVERRIDES += \
    ro.secure=1 \
    ro.adb.secure=0 \
    ro.allow.mock.location=0 \
    ro.vendor.build.security_patch=2099-12-31
