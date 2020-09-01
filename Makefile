
all: run

ROOT ?= $(abspath .)
VSRC ?= $(ROOT)/vsrc
GENERATED ?= $(ROOT)/generated-src
CSRC ?= $(ROOT)/csrc
RISCV ?= $(ROOT)/riscv-isa-sim/install
VERILATOR ?= verilator
MAKE ?= make
CXXFLAGS := -O2 -std=c++11 -I$(RISCV)/include
LDFLAGS := $(LDFLAGS) -L$(RISCV)/lib -Wl,-rpath,$(RISCV)/lib -L$(ROOT) -lfesvr -lpthread

TOP := TestHarness
BUILD_DIR := $(ROOT)/build
SIM_EXE := $(BUILD_DIR)/$(TOP)SimExe

VERILOG_FILES := $(VSRC)/*.v $(GENERATED)/*.v
CPP_FILES := $(CSRC)/*.cc

VERILATOR_FLAGS := \
	--cc --exe \
	--top-module $(TOP) \
  --output-split 20000 \
  --output-split-cfuncs 20000 \
  -Wno-STMTDLY --x-assign unique \
  -I$(VSRC) \
  -O1 -CFLAGS "$(CXXFLAGS) -DVERILATOR -DTEST_HARNESS=V$(TOP) -include $(CSRC)/verilator.h -include $(ROOT)/$(TOP).plusArgs" \
	--x-initial 0 \
	--x-assign 0

ifneq ($(DEBUG),)
VERILATOR_DEBUG_FLAGS := --trace --trace-underscore
endif

VERILATOR_DEFINES ?= $(foreach define,$(DEFINES),+define+$(define))

$(SIM_EXE): $(VERILOG_FILES) $(CPP_FILES)
	$(VERILATOR) $(VERILATOR_FLAGS) $(VERILATOR_DEBUG_FLAGS) $(VERILATOR_DEFINES) \
			-Mdir $(BUILD_DIR) \
	   -o $(SIM_EXE) $(VERILOG_FILES) $(CPP_FILES) -LDFLAGS "$(LDFLAGS)" \
		 -CFLAGS "-I$(BUILD_DIR) -include $(BUILD_DIR)/V$(TOP).h"
	$(MAKE) VM_PARALLEL_BUILDS=1 -C $(BUILD_DIR) -f V$(TOP).mk

ifneq ($(DEBUG),)
RUN_DEBUG_FLAGS := -vout.vcd
endif

run: $(SIM_EXE)
	$< +max-cycles=25 -s0 $(RUN_DEBUG_FLAGS) rv64ud-v-fcvt

clean:
	rm -rf $(BUILD_DIR)/* *.vcd *.vpd

.PHONY: run all clean

