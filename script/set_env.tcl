#-----------------------------------------------------------------------------
# Copyright 2024 Space Cubics, LLC
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
#-----------------------------------------------------------------------------
# Set Environment 
#-----------------------------------------------------------------------------

# AMD IP directory
set ip_dir         amd_ip
set hls_dir        hls_ip

# RTL directory
set rtldir         ./rtl
set veriloglist    ./rtl/rtl.list

# Report directory
set rptdit         ./report

# Device Parameter
set xil_device     xc7a200t
set xil_package    -fbg676
set xil_speed      -1
set xil_part       ${xil_device}${xil_package}${xil_speed}

# Build Machine Setting
set cpus           4
