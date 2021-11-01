-include .env
export

CC:=gcc
NVIM_PATH?=nvim
ROOT_DIR:=$(shell dirname $(realpath $(firstword $(MAKEFILE_LIST))))
MAKE+=--no-print-directory

.PHONY: default all clean remake test debug

default: nvelox luaconfig

all: default

nvelox: 
	@$(MAKE) --directory=libs/nvelox

luaconfig: 
	@$(MAKE) --directory=libs/luaconfig

clean:
	rm -rf build/
	@$(MAKE) --directory=libs/nvelox clean
	@$(MAKE) --directory=libs/luaconfig clean

remake: clean nvelox luaconfig

test:
	@LUA_CPATH="$(ROOT_DIR)/lua/?/init.so;$(ROOT_DIR)/lua/?.so" LUA_PATH="./lua/?.lua;$(ROOT_DIR)/examples/?/init.lua;$(ROOT_DIR)/examples/nvlx/?.lua;;" $(NVIM_PATH) -u init.lua

debug:
	@LUA_CPATH="$(ROOT_DIR)/lua/?/init.so;$(ROOT_DIR)/lua/?.so" LUA_PATH="./lua/?.lua;$(ROOT_DIR)/examples/?/init.lua;$(ROOT_DIR)/examples/nvlx/?.lua;;" $(NVIM_PATH) -u init.lua --headless +q
