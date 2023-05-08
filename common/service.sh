#!/bin/sh
MODDIR=${0%/*}

$MODDIR/Memory.sh
$MODDIR/Sandrone.sh
$MODDIR/pidboost.sh
while [[ -z $(getprop sys.boot_completed) ]]; do sleep 30; done
setprop debug.renderengine.backend vulkan