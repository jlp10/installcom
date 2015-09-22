#!/bin/bash
#

export ROOTSYS=~/bin/root
if ! echo ${PATH} | grep -q $ROOTSYS/bin ; then
    export PATH=$ROOTSYS/bin:$PATH
fi

if [ -n "$LD_LIBRARY_PATH" ]; then
    if ! echo ${LD_LIBRARY_PATH} | grep -q $ROOTSYS/lib ; then
        export LD_LIBRARY_PATH=$ROOTSYS/lib:$LD_LIBRARY_PATH
    fi
else
    export LD_LIBRARY_PATH=$ROOTSYS/lib
fi
