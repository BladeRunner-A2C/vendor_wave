#
# Copyright (C) 2019 Wave-OS
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

# Get Wave specific boot animation
ifneq ($(TARGET_BOOT_ANIMATION_RES),)
     PRODUCT_COPY_FILES += vendor/wave/prebuilt/common/media/bootanimation/$(TARGET_BOOT_ANIMATION_RES).zip:system/media/bootanimation.zip
else
     $(error TARGET_BOOT_ANIMATION_RES is not set.)
     exit
endif
