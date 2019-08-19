#!/bin/bash
PRIVATE_CONFIG=data/tm.ipc geth --exec "loadScript(\"$1\")" attach ipc:data/geth.ipc

