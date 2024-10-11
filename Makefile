# ---------------------------------------------------------------------------
# sc-obc-a1-fpga: Create vivado block design script
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
# ---------------------------------------------------------------------------

# Project Setting
PROJECT_NAME := udl_axi
PROJECT_DIR  := project

# Command Variables
VIVADOTCL    := vivado -mode batch
RM           := rm -rf
MV           := mv
MKDIR        := mkdir -p

CF           := $(PROJECT_DIR)
CF           += vivado*.jou vivado*.log vivado*.str

# ---------------------------------------------------------------------------
PHONY := all
all: create_udl_axi_bd

# Create udl_axiZynq PS Block Design target
PHONY += create_udl_axi_bd
create_udl_axi_bd: $(PROJECT_DIR)/$(PROJECT_NAME).srcs/*/bd/udl_axi_bd/udl_axi_bd.bd
$(PROJECT_DIR)/$(PROJECT_NAME).srcs/*/bd/udl_axi_bd/udl_axi_bd.bd:
ifeq ("$(wildcard $(PROJECT_DIR))", "")
	$(VIVADOTCL) -source script/create_project.tcl -tclargs $(PROJECT_NAME) $(PROJECT_DIR)
endif
	$(VIVADOTCL) -source script/create_udl_axi_bd.tcl -tclargs $(PROJECT_NAME) $(PROJECT_DIR)

# Clean target
PHONY += clean
clean:
	$(RM) $(CF)

.PHONY: $(PHONY)
