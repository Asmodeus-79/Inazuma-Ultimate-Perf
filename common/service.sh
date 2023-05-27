#!/bin/sh
MODDIR=${0%/*}

$MODDIR/Memory
$MODDIR/Kolombia
while [[ -z $(getprop sys.boot_completed) ]]; do sleep 30; done
setprop debug.renderengine.backend vulkan