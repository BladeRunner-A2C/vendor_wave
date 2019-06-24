# Copyright (C) 2010 Wave-OS
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

# -----------------------------------------------------------------
# Wave OTA update package

.PHONY: bacon
bacon: $(INTERNAL_OTA_PACKAGE_TARGET)
	$(hide) ln -f $(INTERNAL_OTA_PACKAGE_TARGET) $(WAVE_TARGET_ZIP)
	$(hide) $(MD5SUM) $(WAVE_TARGET_ZIP) | sed "s|$(PRODUCT_OUT)/||" > $(WAVE_TARGET_ZIP).md5sum
	@echo "Package Complete: $(WAVE_TARGET_ZIP)" >&2
