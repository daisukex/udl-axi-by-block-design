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
# Create Project
#-----------------------------------------------------------------------------

source script/set_env.tcl

# Check argument
if {${argc} < 2} {
    puts "Not enough arguments."
    puts " vivado -mode tcl -source (script) -tclargs (Project Name) (Project Directory)
    exit 1
}
set arglist ${argv}

# Set project
set prj_name [lindex ${arglist} 0]
set prj_dir  [lindex ${arglist} 1]

# Create Project
create_project -part ${xil_part} ${prj_name} ${prj_dir}
set_property platform.extensible true [current_project]

# Close Project
close_project
exit
