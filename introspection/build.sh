#!/bin/bash
__PWD=`pwd`
# Copyright 2017 IBM Corp.
#
# All Rights Reserved.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#
# Build custom vmlinux and root filesystem for introspection
#
# Move defconfig to .config
# Execute buildroot makefile and place output in introspection/output dir
#
# Exit 0 on success; 1 on failure
#
set -e

# build rootfs and kernel.
make --directory=${__PWD}/buildroot O=${__PWD}/output ppc64le_defconfig
make --directory=${__PWD}/buildroot O=${__PWD}/output
