#!/system/bin/sh

#CPU tweak
for i in /sys/devices/system/cpu/cpufreq/policy[0,6]/sugov_ext ; do
    chmod 666 $i/down_rate_limit_us
    chmod 666 $i/up_rate_limit_us
    echo 1000 > $i/up_rate_limit_us
	echo 20000 > $i/down_rate_limit_us
    chmod 444 $i/up_rate_limit_us
	chmod 444 $i/down_rate_limit_us
done

# CPU Load settings
	echo 0-7 > /dev/cpuset/foreground/cpus
	echo 0-2 > /dev/cpuset/background/cpus
	echo 0-5 > /dev/cpuset/system-background/cpus
	echo 0-7 > /dev/cpuset/top-app/cpus
	echo 0 > /dev/cpuset/restricted/cpus

#Perf Tweak
echo 1 > /sys/devices/system/cpu/perf/enable
cat /sys/devices/system/cpu/perf/enable
echo simple_ondemand > /sys/class/devfreq/13000000.mali/governor;
echo 1100000 > /sys/module/ged/parameters/gpu_cust_upbound_freq;
echo 1 > /sys/module/ged/parameters/boost_gpu_enable;
echo 1 > /sys/module/ged/parameters/enable_gpu_boost;
echo 100 > /sys/module/ged/parameters/ged_smart_boost;
echo 0 > /sys/module/ged/parameters/gpu_idle;
echo 0 > /proc/sys/kernel/perf_cpu_time_max_percent;
echo 5000000 > /proc/sys/kernel/sched_migration_cost_ns
echo 6000000 > /proc/sys/kernel/sched_latency_ns
echo 0 0 0 0 > /proc/sys/kernel/printk
echo off > /proc/sys/kernel/printk_devkmsg
echo 1 > /proc/sys/kernel/timer_migration
echo 0 > /proc/sys/kernel/panic
echo 0 > /proc/sys/kernel/panic_on_oops
echo 1 > /proc/sys/kernel/sched_tunable_scaling

# Disable Core control / hotplug
for i in /sys/devices/system/cpu/cpu[0,6]/core_ctl ; do
    chmod 666 $i/enable
	echo 0 > $i/enable
	chmod 444 $i/enable
done

