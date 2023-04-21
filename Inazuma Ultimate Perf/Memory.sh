#!/system/bin/sh

#Memory optimize
swapoff /dev/block/zram0
echo 1 >/sys/block/zram0/reset
echo 3G >/sys/block/zram0/disksize
mkswap /dev/block/zram0
swapon /dev/block/zram0
echo 20 > /proc/sys/vm/swappiness
echo 150 > /proc/sys/vm/vfs_cache_pressure
echo 0 > /proc/sys/vm/watermark_boost_factor
echo 32 > /proc/sys/vm/watermark_scale_factor
echo 20 > /proc/sys/vm/stat_interval
echo 750 > /proc/sys/vm/extfrag_threshold
echo 128 > /sys/block/*/queue/read_ahead_kb
echo 5000000 > /proc/sys/kernel/sched_migration_cost_ns
echo 6000000 > /proc/sys/kernel/sched_latency_ns
