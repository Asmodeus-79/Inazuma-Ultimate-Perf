function boost()
{
  pgrep -o $1 | while read pid name; do
  echo $pid > /dev/cpuset/top-app/cgroup.procs
  done
}

boost system_server
boost vendor.qti.hardware.display.composer-service
boost android.hardware.graphics.composer@2.0-service
boost android.hardware.graphics.composer@2.1-service
boost android.hardware.graphics.composer@2.2-service
boost android.hardware.graphics.composer@2.3-service
boost android.hardware.graphics.composer@2.4-service
boost surfaceflinger

while true; do
function boost_home()
{
  pgrep -o $1 | while read pid name; do
  echo $pid > /dev/cpuset/top-app/cgroup.procs
  done
}