#!/bin/sh
MODDIR=${0%/*}

$MODDIR/Memory
$MODDIR/Naganohara
$MODDIR/UNLOCKER

#Mounting R/W on boot
mount -o remount,rw /
mount -o remount,rw /system
mount -o remount,rw /vendor
