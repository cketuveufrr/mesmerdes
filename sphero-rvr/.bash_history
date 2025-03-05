sudo sh -c 'echo "deb http://packages.ros.org/ros/ubuntu $(lsb_release -sc) main" > /etc/apt/sources.list.d/ros-latest.list'
sudo apt install curl # if you haven't already installed curl
curl -s https://raw.githubusercontent.com/ros/rosdistro/master/ros.asc | sudo apt-key add -
sudo apt-get install build-essential
cd ../..
ls
cd lib
ls
sudo date --set="7 FEB 2024 16:25:00"
cd ..
ls
cd home/sphero-rvr/
curl -s https://raw.githubusercontent.com/ros/rosdistro/master/ros.asc | sudo apt-key add -
sudo apt update
sudo apt install ros-noetic-desktop-full
apt list --upgradable
sudo apt-upgrade
sudo apt install ros-noetic-desktop-full
sudo apt update
sudo apt upgrade
sudo reboot
sudo apt update
sudo date --set="7 FEB 2024 16:50:00"
sudo apt update
sudo apt upgrade
sudo apt update
top
sudo apt update
sudo apt install ros-noetic-desktop-full
sudo apt install python3-rosdep python3-rosinstall python3-rosinstall-generator python3-wstool build-essential
echo "source /opt/ros/noetic/setup.bash" >> ~/.bashrc
source ~/.bashrc
sudo apt install python3-rosdep python3-rosinstall python3-rosinstall-generator python3-wstool build-essential
sudo rosdep init
rosdep update
sudo shutdown now
ls
vim .bashrc
pip3 install aiohttp pyserial_asyncio
sudo apt install python3-pip
pip3 install aiohttp pyserial_asyncio
sudo date --set="8 FEB 2024 14:25:00"
pip3 install aiohttp pyserial_asyncio
git clone https://github.com/demiurge-project/sphero-sdk-raspberrypi-python.git
cd sphero-sdk-raspberrypi-python/
python3 ~/sphero-sdk-raspberrypi-python/getting_started/observer/api_and_shell/echo.py
sudo python3 ~/sphero-sdk-raspberrypi-python/getting_started/observer/api_and_shell/echo.py
compgen -u
cd ../..
cd ..
cd dev/
ls
sudo shutdown now
cd ../../dev/
ls -la
python3
sudo shutdown now
ls
sudo shutdown now
sudo nano /boot/config.txt
sudo reboot
python3 ~/sphero-sdk-raspberrypi-python/getting_started/observer/api_and_shell/echo.py
sudo shutdown now
ls -l /dev
shutdown now
sudo shutdown now
sudo nano ~/boot/config.txt
cd ..
ls
cd boot/
ls
vim config.txt 
sudo vim config.txt 
ls
sudo adduser sphero-rvr dialout
cd ../..
cd ..
ls
cd home/
python3 ~/sphero-sdk-raspberrypi-python/getting_started/observer/api_and_shell/echo.py
cd ../..
cd ../boot/
cd firmware/
ls
vim config.txt 
sudo vim cmdline.txt 
sudo shutdown now
sudo adduser sphero-rvr dialout
python3 ~/sphero-sdk-raspberrypi-python/getting_started/observer/api_and_shell/echo.py
cd ..
ls
cd boot/
ls
cd ..
cd home/
cd sphero-rvr/
ls
git clone https://github.com/demiurge-project/rvr_ros_driver.git rvr_ros
cd rvr_ros/
git submodule init
git submodule update
rosdep install --from-paths src --ignore-src -r -y
catkin_make
sudo shutdown now
python3 ~/sphero-sdk-raspberrypi-python/getting_started/observer/api_and_shell/echo.py
git clone https://github.com/ilpincy/argos3 ~/argos3
cd argos3/
git checkout 3.0.0-beta48
mkdir build && cd build
cmake ../src
make
sudo date --set="9 FEB 2024 11:27:00"
make
sudo make install
make doc
sudo make install
cd ..
git clone https://github.com/demiurge-project/argos3-rvr.git
cd argos3-rvr/
mkdir build && cd build
cmake ../src
make\
make
sudo make install
cd ../..
cd rvr_ros/
catkin_make
sudo apt-get install libfreeimage-dev libfreeimageplus-dev qt5-default
sudo apt get install freeglut3-dev libxi-dev libxmu-dev liblua5.2-dev lua5.2 doxygen graphviz
sudo apt-get install freeglut3-dev libxi-dev libxmu-dev liblua5.2-dev lua5.2 doxygen graphviz
sudo apt-get install graphviz-dev asciidoc
catkin_make
git clone https://github.com/YDLIDAR/YDLidar-SDK.git
ls
rm - YDLidar-SDK/
rm -r YDLidar-SDK/
y
git clone https://github.com/YDLIDAR/YDLidar-SDK.git ydlidar_sdk
cd ydlidar_sdk/
ls
mkdir build 
cd build/
cmake ../src
make
cmake ..
cd ..
rm -r build/
mkdir build
cd build/
cmake ..
make
sudo make install
cd ../..
catkin_make
source ./devel/setup.bash
echo "source ${PWD}/devel/setup.bash" >> ~/.bashrc
source ~/.bashrc
ln -s ~/sphero-sdk-raspberrypi-python/sphero_sdk/ ~/rvr_ros/src/rvr_ros/src/
roscd ydlidar_ros_driver/startup
sudo chmod 777 ./*
sudo sh initenv.sh
cd ..
roslaunch ydlidar_ros_driver X4.launch 
python3 ~/sphero-sdk-raspberrypi-python/getting_started/observer/api_and_shell/echo.py
roslaunch ydlidar_ros_driver X4.launch 
cd ..
cd boot/firmware/
sudo vim cmdline.txt 
sudo vim config.txt 
sudo reboot
roscore
cd rvr_ros/
python3 ~/sphero-sdk-raspberrypi-python/getting_started/observer/api_and_shell/echo.py
roslaunch ydlidar_ros_driver X4.launch 
cd ../..
cd ls
ls
cd boot/firmware/
vim config.txt 
sudo shutdown now
roscore
./ki
./kill_nodes.sh 
roscore
sudo shutdown now
roslaunch ydlidar_ros_driver X4.launch 
rostopic list
rostopic info /rvr/wheels_speed 
cd rvr_ros
./kill_nodes.sh 
cd rvr_ros/
git pull
rosrun rw_lidar rw.py 
git pull
rosrun rw_lidar rw.py 
git pull
rosrun rw_lidar rw.py 
git pull
rosrun rw_lidar rw.py 
git pull
rosrun rw_lidar rw.py 
git pull
rosrun rw_lidar rw.py 
git pull
rosrun rw_lidar rw.py 
git pull
rosrun rw_lidar rw.py 
git pull
rosrun rw_lidar rw.py 
git pull
rosrun rw_lidar rw.py 
git pull
rosrun rw_lidar rw.py 
git pull
rosrun rw_lidar rw.py 
git pull
rosrun rw_lidar rw.py 
git pull
rosrun rw_lidar rw.py 
git pull
rosrun rw_lidar rw.py 
sudo shutdown now
roscore
cd rvr_ros/
rosrun rvr_ros rvr_async_driver.py 
roslaunch ydlidar_ros_driver X4.launch 
rostopic list
rostopic info /wheels_speed
rostopic info /rvr/wheels_speed
roslaunch ydlidar_ros_driver X4.launch 
rostopic cheo /rvr/wheels_speed 
rostopic echo /rvr/wheels_speed 
rostopic pub /rvr/wheels_speed std_msgs/Float32MultiArray "layout:
  dim:
  - label: 'wheel_vel'
    size: 2
    stride: 1
  data_offset: 0
data: [0.1, 0.1]" 
rostopic pub /rvr/wheels_speed std_msgs/Float32MultiArray "layout:
  dim:
  - label: 'wheel_vel'
    size: 2
    stride: 1
  data_offset: 0
data: [0, 0]" 
rostopic pub /rvr/wheels_speed std_msgs/Float32MultiArray "layout:
  dim:
  - label: 'wheel_vel'
    size: 2
    stride: 1
  data_offset: 0
data: [0.1, 0.1]" 
rostopic pub /rvr/wheels_speed std_msgs/Float32MultiArray "layout:
  dim:
  - label: 'wheel_vel'
    size: 2
    stride: 1
  data_offset: 0
data: [0, 0]" 
rostopic pub /rvr/wheels_speed std_msgs/Float32MultiArray "layout:
  dim:
  - label: 'wheel_vel'
    size: 2
    stride: 1
  data_offset: 0
data: [0.1, 0.1]" 
rostopic pub /rvr/wheels_speed std_msgs/Float32MultiArray "layout:
  dim:
  - label: 'wheel_vel'
    size: 2
    stride: 1
  data_offset: 0
data: [0, 0]" 
cd rvr_ros/
rostopic pub /rvr/wheels_speed std_msgs/Float32MultiArray "layout:
  dim:
  - label: 'wheel_vel'
    size: 2
    stride: 1
  data_offset: 0
data: [0, 0]" 
rostopic pub /rvr/wheels_speed std_msgs/Float32MultiArray "layout:
  dim:
  - label: 'wheel_vel'
    size: 2
    stride: 1
  data_offset: 0
data: [0, 0]" 
cd rvr_ros/
git status
git pull
sudo shutdown now
roscore
rosrun rvr_ros rvr_async_driver.py 
roslaunch ydlidar_ros_driver X4.launch 
sudo shutdown now
rosrun rw_lidar rw.py 
roscore &
rostopic list
roscore
rosrun rvr_ros rvr_async_driver.py 
rosrun rvr_ros rvr_async_driver.py &
roslaunch ydlidar_ros_driver X4.launch &
rosrun rw_lidar rw.py 
kill 1313
kill 1446
kill *
killall5 -9
rocsore &
ros
ls
exit
cd rvr_ros/
git pull 
cd src/rw_lidar/scripts/
vim rw.py 
sudo shutdown now
spherorvr
rostopic pub /rvr/wheels_speed std_msgs/Float32MultiArray "layout:
  dim:
  - label: 'wheel_vel'
    size: 2
    stride: 1
  data_offset: 0
data:[0.0,0.0]
" 
rostopic pub /rvr/wheels_speed std_msgs/Float32MultiArray "layout:
  dim:
  - label: 'wheel_vel'
    size: 2
    stride: 1
  data_offset: 0
data:[0.0,0.0]
" 
rostopic pub /rvr/wheels_speed std_msgs/Float32MultiArray "layout:
  dim:
  - label: ''
    size: 2
    stride: 1
  data_offset: 0
data:[0.0;0.0]" 
rostopic pub /rvr/wheels_speed std_msgs/Float32MultiArray "layout:
  dim:
  - label: 'wheel_vel'
    size: 2
    stride: 1
  data_offset: 0
data:[0.0,0.0]" 
rostopic pub /rvr/wheels_speed std_msgs/Float32MultiArray "layout:
  dim:
  - label: 'wheel_vel'
    size: 2
    stride: 1
  data_offset: 0
data: [0,0]" 
rostopic pub /rvr/wheels_speed std_msgs/Float32MultiArray "layout:
  dim:
  - label: 'wheel_vel'
    size: 2
    stride: 1
  data_offset: 0
data: [0,0]" 
roscore &
rosrun rvr_ros rvr_async_driver.py &
roslaunch ydlidar_ros_driver X4.launch &
rosrun rw_lidar rw.py 
rosnode kill /rvr_async_driver 
rosrun rvr_ros rvr_async_driver.py &
rosnode kill /rvr_async_driver 
ls
./rvr_ros/kill_nodes.sh 
sudo shutdown now
roscore
rosbag record -O camera_02151159.bag /oak_frames &
kill process 2954
kill process 2989
rosrun rvr_ros rvr_async_driver.py &
roslaunch ydlidar_ros_driver X4.launch &
htop
roslaunch ydlidar_ros_driver X4.launch &
cd rvr_robot_detection/
cd oak_detector/
ls
python3 oak_detector.py ../models/rvr_detection_v2_1.blob ../models/rvr_detection_v2_1.json visualize &
rosnode kill /ydlidar_lidar_publisher
roslaunch ydlidar_ros_driver X4.launch &
cd ../../..
rosrun rw_lidar rw.py 
sudo shutdown now
rostopic pub /rvr/wheels_speed std_msgs/Float32MultiArray "layout:
  dim:
  - label: 'wheel_vel'
    size: 2
    stride: 1
  data_offset: 0
data: [0,0]" 
rostopic pub /rvr/wheels_speed std_msgs/Float32MultiArray "layout:
  dim:
  - label: 'wheel_vel'
    size: 2
    stride: 1
  data_offset: 0
data: [0,0]" 
rostopic pub /rvr/wheels_speed std_msgs/Float32MultiArray "layout:
  dim:
  - label: 'wheel_vel'
    size: 2
    stride: 1
  data_offset: 0
data: [0,0]" 
rostopic list
rostopic echo /oak
rostopic list
rostopic echo /oak_frames 
ls
sudo cp cam_record_1502115.bag /media/USB_CAM/cam_record_1502115.bag
ls
cd rvr_robot_detection/
ls
git status
git fetch
git status
git pull
rostopic list
rostopic echo /oak_frames
ls
git clone https://github.com/Said-belaroussi/rvr_robot_detection.git
python3 -m pip install --trusted-host pypi.org --trusted-host pypi.python.org --trusted-host files.pythonhosted.org depthai
echo 'SUBSYSTEM=="usb", ATTRS{idVendor}=="03e7", MODE="0666"' | sudo tee /etc/udev/rules.d/80-movidius.rules sudo udevadm control --reload-rules && sudo udevadm trigger
ls
cd rvr_robot_detection/
ls
cd oak_detector/
python3 oak_detector.py ../models/rvr_detection_v2_3.blob ../models/rvr_detection_v2_3.json
sudo apt install ros-noetic-vision-msgs
python3 oak_detector.py ../models/rvr_detection_v2_1.blob ../models/rvr_detection_v2_1.json
echo 'SUBSYSTEM=="usb", ATTRS{idVendor}=="03e7", MODE="0666"' | sudo tee /etc/udev/rules.d/80-movidius.rules
sudo udevadm control --reload-rules && sudo udevadm trigger
python3 oak_detector.py ../models/rvr_detection_v2_1.blob ../models/rvr_detection_v2_1.json
python3 oak_detector.py ../models/rvr_detection_v2_1.blob ../models/rvr_detection_v2_1.json visualize
python3 oak_detector.py ../models/rvr_detection_v2_1.blob ../models/rvr_detection_v2_1.json
python3 oak_detector.py ../models/rvr_detection_v2_3.blob ../models/rvr_detection_v2_3.json visualize
ls
python3 oak_detector.py ../models/rvr_detection_v2_3.blob ../models/rvr_detection_v2_3.json visualize
rosbag record -O cam_1515.bag /oak_frames
cd rvr_robot_detection/oak_detector/
cd ..
git status
git fetch
git pull
cd oak_detector/
python3 oak_detector.py ../models/rvr_detection_v2_1.blob ../models/rvr_detection_v2_1.json visualize
python3 oak_detector.py ../models/rvr_detection_v2_3.blob ../models/rvr_detection_v2_3.json visualize
rostopic pub /rvr/wheels_speed std_msgs/Float32MultiArray "layout:
  dim:
  - label: 'wheel_vel'
    size: 2
    stride: 1
  data_offset: 0
data: [0,0]" 
rostopic pub /rvr/wheels_speed std_msgs/Float32MultiArray "layout:
  dim:
  - label: 'wheel_vel'
    size: 2
    stride: 1
  data_offset: 0
data: [0,0]" 
rostopic pub /rvr/wheels_speed std_msgs/Float32MultiArray "layout:
  dim:
  - label: 'wheel_vel'
    size: 2
    stride: 1
  data_offset: 0
data: [0,0]" 
rostopic pub /rvr/wheels_speed std_msgs/Float32MultiArray "layout:
  dim:
  - label: 'wheel_vel'
    size: 2
    stride: 1
  data_offset: 0
data: [0,0]" 
rostopic pub /rvr/wheels_speed std_msgs/Float32MultiArray "layout:
  dim:
  - label: 'wheel_vel'
    size: 2
    stride: 1
  data_offset: 0
data: [0,0]" 
rostopic pub /rvr/wheels_speed std_msgs/Float32MultiArray "layout:
  dim:
  - label: 'wheel_vel'
    size: 2
    stride: 1
  data_offset: 0
data: [0,0]" 
rostopic pub /rvr/wheels_speed std_msgs/Float32MultiArray "layout:
  dim:
  - label: 'wheel_vel'
    size: 2
    stride: 1
  data_offset: 0
data: [0,0]" 
rostopic pub /rvr/wheels_speed std_msgs/Float32MultiArray "layout:
  dim:
  - label: 'wheel_vel'
    size: 2
    stride: 1
  data_offset: 0
data: [0,0]" 
rostopic pub /rvr/wheels_speed std_msgs/Float32MultiArray "layout:
  dim:
  - label: 'wheel_vel'
    size: 2
    stride: 1
  data_offset: 0
data: [0,0]" 
roscore &
rosrun rvr_ros rvr_async_driver.py &
roslaunch ydlidar_ros_driver X4.launch &
rosrun rw_lidar rw.py 
rosrun rvr_ros rvr_async_driver.py &
./rvr_ros/kill_nodes.sh 
rosrun rvr_ros rvr_async_driver.py &
rosrun rw_lidar rw.py 
vim rvr_ros/src/rw_lidar/scripts/rw.py 
./rvr_ros/kill_nodes.sh 
rosrun rvr_ros rvr_async_driver.py &
rosrun rw_lidar rw.py 
./rvr_ros/kill_nodes.sh 
rosrun rvr_ros rvr_async_driver.py &
rosrun rw_lidar rw.py 
ip -a
ip a
./rvr_ros/kill_nodes.sh 
rosrun rvr_ros rvr_async_driver.py &
rosrun rw_lidar rw.py 
./rvr_ros/kill_nodes.sh 
rosrun rvr_ros rvr_async_driver.py &
rosrun rw_lidar rw.py 
./rvr_ros/kill_nodes.sh 
rosrun rvr_ros rvr_async_driver.py &
rosrun rw_lidar rw.py 
./rvr_ros/kill_nodes.sh 
rosrun rvr_ros rvr_async_driver.py &
rosrun rw_lidar rw.py 
./rvr_ros/kill_nodes.sh 
rosrun rvr_ros rvr_async_driver.py &
rosrun rw_lidar rw.py 
ip a
sudo shutdown mow
sudo shutdown now
./rvr_ros/kill_nodes.sh 
sudo shutdown now
roscore
rosbag record -a -O odom_test_18031.bag
rosbag record -a -O odom_test_18032.bag
rosbag record -a -O odom_test_18033.bag
rosbag record -a -O odom_test_18034.bag
rosbag record -a -O odom_test_18035.bag
rosbag record -a -O odom_test_18036.bag
roslaunch ydlidar_ros_driver X4.launch 
rosrun rw_lidar rw.py 
sudo shutdown now
roscore
rostopic echo
rostopic list
roslaunch ydlidar_ros_driver X4.launch
sudo shutdown now
roslaunch ydlidar_ros_driver X4.launch
sudo shutdown now
sudo apt install ntp
touch *
sudo apt install ros-noetic-slam-gmapping
sudo apt install ros-noetic-multirobot-map-merge
sudo apt install ros-noetic-explore-lite
sudo apt install ros-noetic-map-server
pip3 install scikit-image
pip install scikit-image
sudo apt-get update
sudo apt-get upgrade
sudo apt-get update
sudo apt-get upgrade
sudo shutdown now
sudo apt-get update
sudo apt-get upgrade
pip3 install scikit-image
export PATH=/home/sphero-rvr/.local/bin:$PATH
ls
roscore
ls
cd rvr_robot_detection/
ls
cd utils/
ls
>simple_red_detect.py
ls
nano simple_red_detect.py 
cd
roscore
sudo shutdown now
rostopic echo
rostopic list
roslaunch ydlidar_ros_driver X4.launch
rosrun rvr_ros rvr_async_driver.py
ls
cd rvr_ros
ls
cd ser
cd src
ls
cd rw_lidar/
ls
cd scripts/
ls
python3 rw.py
cd
./rvr_ros/kill_nodes.sh 
roscore
ls
cd rvr_ros
ls
>outputfile.txt
ls
>capture.launch
ls
nano capture.launch
>gmapping_metro3.launch
nano gmapping_metro3.launch
mkdir map_capture
ls
sudo shutdown now
cd rvr_ros
cd src
ls
cd rw_lidar/
ls
cd scripts/
ls
nano rw.py
rostopic list
rostopic echo scan
ls
cd rvr_ros
ls
cd src
ls
cd images/
ls
cd src
ls
nano imagespy.py 
ls
cd
cd rvr_ros
ls
rm -rf build
rm -rf devel
mkdir build
touch *
catkin_make
touch *
catkin_make
roscore
cd rvr_ros
./param_hex 
ls
nano gmapping_metro3.launch
nano capture.launch 
cd
cd rvr_ros
roslaunch multiple_launch.launch
cd rvr_ros
ls
cd src
;s
ls
cd rw_lidar/
ls
cd scripts/
ls
python3 rw.py
nano rw
nano rw.py 
python3 rw.py
CD
cd
./rvr_ros/kill_nodes.sh
sudo shutdown now
cd rvr_ros
ls
roslaunch images images.launch
ls
cd src
ls
cd images/
ls
cd src
ls
chmod +x imagespy.py
cd
cd rvr_ros
ls
roslaunch images images.launch
roslaunch ydlidar_ros_driver X4.launch
rosrun rvr_ros rvr_async_driver.py
cd rvr_ros
roslaunch images images.launch
pip3 install sewar
roslaunch images images.launch
ls
cd rvr_ros
ls
cd src
ls
cd rw_lidar/
ls
cd scripts/
ls
mv rw.py rw_ed.py
ls
mv rw1.py rw.py
ls
cd
roscore
roslaunch ydlidar_ros_driver X4.launch
./rvr_ros/kill_nodes.sh
sudo shutdown now
rosrun rvr_ros rvr_async_driver.py
cd rvr_ros
ls
cd src
;s
ls
cd rw_
cd rw_lidar
ls
cd scripts/
ls
nano rw.py
cd
roscore
./rvr_ros/kill_nodes.sh
sudo shutdown now
cd rvr_ros
ls
cd src
cd rw_lidar/
cd scripts/
ls
python3 rw.py
nano rw.py
python3 rw.py
roslaunch ydlidar_ros_driver X4.launch
cd rvr_ros
ls
cd src
cd rw_lidar/
cd scripts/
ls
nano rw.py
roscore
rosrun rvr_ros rvr_async_driver.py
./rvr_ros/kill_nodes.sh
sudo shutdown now
cd rvr_ros
cd src
ls
cd rw_lidar/
cd scripts/
ls
python3 rw.py
nano rw.py
python3 rw.py
ls
nano rw.py
python3 rw.py
nano rw.py
ls
cd rvr_ros
ls
cd src
ls
cd rw_lidar/
ls
cd scripts/
ls
nano rw.py
cd
roscore
sudo shutdown now
roscore
shutdown now
sudo shutdown now
rostopic list
rostopic echo red_led_detected
ls
cd rvr_ros
ls
cd src
ls
cd rw_lidar/
ls
cd scripts/
ls
nano rw.py
python3 rw.py
roslaunch ydlidar_ros_driver X4.launch
rostopic list
rostopic echo scan
rosrun rvr_ros rvr_async_driver.py
roscore
./rvr_ros/kill_nodes.sh
cd rvr_ros
ls
cd src
ls
cd rw_lidar/
ls
cd scripts/
;s
l
nano rw.py
sudo shutdown now
roscore
rostopic list
roslaunch ydlidar_ros_driver X4.launch
ls
cd rvr_ro
cd rvr_ros
ls
cd src
ls
cd rw_lidar/
cd scripts/
ls
python3 rw.py
rostopic list
rostopic echo scan
sudo shutdown now
cd rvr_ros
ls
cd src
ls
cd rw_lidar/
cd scripts/
ls
nano rw.py
cd
roscore
roslaunch ydlidar_ros_driver X4.launch
rosrun rvr_ros rvr_async_driver.py
rostopic list
rostopic echo scan
rostopic list
rostopic echo rvr/wheels_speed
rostopic list
rostopic echo scan
./rvr_ros/kill_nodes.sh
cd rvr_ros
ls
cd src
ls
cd rw_lidar/
ls
cd scripts/
ls
python3 rw.py
nano rw.py
python3 rw.py
nano rw.py
python3 rw.py
nano rw.py
python3 rw.py
nano rw.py
python3 rw.py
nano rw.py
python3 rw.py
nano rw.py
python3 rw.py
nano rw.py
sudo shutdown now
python3 rw.py
exit
roscore
roslaunch ydlidar_ros_driver X4.launch
sudo shutdown now
rosrun rvr_ros rvr_async_driver.py
./rvr_ros/kill_nodes.sh
cd rvr_ros
ls
cd scr
cd src
ls
cd rw_lidar/
ls
cd scripts/
ls
python3 rw.py
nano rw.py
python3 rw.py
nano rw.py
python3 rw.py
nano rw.py
python3 rw.py
nano rw.py
python3 rw.py
nano rw.py
script ~/rvr_controller?outputfile.txt
cd
cd rvr_ros
ls
nano outputfile.txt
cd src
ls
cd rw_lidar/
ls
cd scripts/
nano rw.py
python3 rw.py
exit
roscore
roslaunch ydlidar_ros_driver X4.launch
sudo shutdown now
./rvr_ros/kill_nodes.sh
cd rvr_ros
ls
cd src
ls
cd rw_lidar/
ls
cd scripts/
ls
script ~/rvr_ros/outputfile.txt
rvr_ros rvr_async_driver.py
rosrun rvr_ros rvr_async_driver.py
cd rvr_ros
ls
cd src
cd rw_lidar/
cd scripts/
ls
nano rw1.py
cd
roscore
roslaunch ydlidar_ros_driver X4.launch
./rvr_ros/kill_nodes.sh
cd rvr_ros
cd src
cd rw_lidar/
cd scripts/
ls
python3 rw1.py
nano rw1.py
python3 rw1.py
sudo shutdown now
roscore
roslaunch ydlidar_ros_driver X4.launch
cd rvr_ros
ls
cd src
cd rw_lidar/
cd scripts/
nano rw1.py
python3 rw1.py
nano rw1.py
python3 rw1.py
nano rw1.py
sudo shutdown now
./rvr_ros/kill_nodes.sh
cd ros_rvr
cd rvr_ros
ls
cd src
ls
cd rw_lidar/
cd scripts/
ls
python3 rw.py
nano rw.py
python3 rw.py
nano rw.py
python3 rw.py
nano rw.py
python3 rw.py
cd
cd rvr_ros
ls
nano gmapping_metro3.launch 
cd src
cd rw_lidar/\
cd rw_lidar
cd scripts/
python3 rw.py
nano rw.py
ls
nano rw1
nano rw1.py
python3 rw1.py
nano rw.py
python3 rw.py
nano rw.py
python3 rw.py
roscore
sudo shutdown now
roslaunch ydlidar_ros_driver X4.launch
rostopic list
roslaunch ydlidar_ros_driver X4.launch
rosrun rvr_ros rvr_async_driver.py
cd rvr_ros
./param_hex 
roslaunch multiple_launch.launch
rostopic list
rostopic echo rvr0/odom
./rvr_ros/kill_nodes.sh
roslaunch images images.launch
cd rvr_robot_detection/
cd utils/
python3 simple_red_detect.py 
rostopic list
rostopic echo rvr0/scan
rostopic list
rostopic echo scan
cd
rostopic list
rostopic echo rvr0/flag
cd rvr_ros
./param_hex 
rostopic list
cd rvr_ros
ls
nano gmapping_metro3.launch 
nano capture.launch 
rostopic list
roscore
sudo shutdown now
roslaunch ydlidar_ros_driver X4.launch
rosrun rvr_ros rvr_async_driver.py
cd rvr_ros
cd src
ls
cd rvr_ros/
ls
cd src
ls
nano rvr_async_driver.py 
rosrun rvr_ros rvr_async_driver.py
./rvr_ros/kill_nodes.sh
cd rvr_ros
roslaunch multiple_launch.launch
cd rvr_ros
roslaunch images images.launch
ls
cd src
ls
cd images/
ls
cd launch/
ls
nano images.launch 
cd ..
ls
cd src
ls
nano imagespy.py
cd rvr_ros
./param_hex 
cd
cd rvr_robot_detection/
cd utils/
python3 simple_red_detect.py 
roslaunch ydlidar_ros_driver X4.launch
roscore
rosrun rvr_ros rvr_async_driver.py
cd rvr_ros
ls
cd src
;s
ls
cd rvr_ros/
ls
cd src/
ls
nano rvr_async_driver.py 
cd
rosrun rvr_ros rvr_async_driver.py
cd rvr_ros
cd src
ls
cd ydlidar_ros_driver/
ls
cd ..
ls
cd rvr_
cd rvr_ros
ls
cd src
ls
nano rvr_async_driver.py 
rosrun rvr_ros rvr_async_driver.py
nano rvr_async_driver.py 
rosrun rvr_ros rvr_async_driver.py
nano rvr_async_driver.py 
sudo apt-get install ros-noetic-ros-numpy
rosrun rvr_ros rvr_async_driver.py
nano rvr_async_driver.py 
pip show ros_numpy
pip install numpy==1.23.5
rosrun rvr_ros rvr_async_driver.py
pip install scipy numpy-quaternion
rosrun rvr_ros rvr_async_driver.py
cd rvr_ros
ls
roslaunch gmapping_metro3.launch 
rosrun tf static_transform_publisher 0 0 0 0 0 0 base_link camera_depth_frame 100 
ls
nano gmapping_metro3.launch 
rostopic list
cd rvr_ros
roslaunch gmapping_metro3.launch 
sudo shutdown now
pip install numpy==1.24.4
export GIT_SSL_NO_VERIFY=1
pip3 install numpy==1.24.4
cmk-update-agent register
sudo apt-get update
sudo date -s "$(wget -qSO- --max-redirect=0 google.com 2>&1 | grep Date: | cut -d' ' -f5-8)Z"
sudo apt-get update
sudo apt-get upgrade
python3 -c "import numpy; print(numpy.version.version)"
pip install --upgrade numpy
python3 -c "import numpy; print(numpy.version.version)"
roscore
rosrun rvr_ros rvr_async_driver.py
sudo shutdown now
rosrun rvr_ros rvr_async_driver.py
pip show ros_numpy
cd /opt/ros/noetic/lib/python3/dist-packages
ls
cd ros_numpy
ls
sudo nano geometry.py
cd
cd rvr_ros
ls
cd src
ls
cd rvr_ros/
;s
ls
cd src
ls
nano rvr_async_driver.py 
cd
rosrun rvr_ros rvr_async_driver.py
roslaunch ydlidar_ros_driver X4.launch
sudo shutdown now
roscore
rostopic list
rostopic echo red_led_detected
cd rvr_ros
ls
./param_hex 
roslaunch multiple_launch.launch
rostopic list
rostopic echo rvr0/odom
ls
nano multiple_launch.launch 
nano gmapping_metro3.launch 
cd src
cd rvr_ros/
ls
cd src
ls
nano rvr_async_driver.py 
cd
cd rvr_ros
ls
nano gmapping_metro3.launch 
cd src
ls
cd rvr_ros/
ls
cd src
ls
nano as
nano rvr_async_driver.py 
cd rvr_robot_detection/
cd utils/
python3 simple_red_detect.py 
rostopic list
rostopic echo scan
cd
cd rvr_ros
ls
./param_hex 
roslaunch gmapping_metro3.launch 
rosrun rvr_ros rvr_async_driver.py
roscore
./rvr_ros/kill_nodes.sh
cd rvr_ros
ls
roslaunch capture.launch 
rostopic list
nano capture.launch 
roslaunch capture.launch 
rostopic list
rostopic echo map
rostopic echo map_metadata
rostopic list
rostopic echo slam_gmapping0/entropy
ls
rm -rf map_capture
mkdir map_capture
roslaunch capture.launch 
nano capture.launch 
roslaunch capture.launch 
cd rvr_ros
./param_hex 
roslaunch multiple launch.launch
roslaunch multiple_launch.launch
ls
nano capture.launch 
cd map_capture/
ls
cd ..
nano capture.launch 
roslaunch multiple_launch.launch
cd map_capture/
pwd
cd ..
nano capture.launch 
roslaunch multiple_launch.launch
ls
roslaunch gmapping_metro3.launch 
nano gmapping_metro3.launch 
roslaunch gmapping_metro3.launch 
roslaunch multiple_launch.launch
ls
cd map_capture/
ls
sudo apt-get install eog
ls
eog map_rvr0.pgm
sudo eog map_rvr0.pgm
sudo shutdown now
cd src/rw_lidar/script
cd rvr_ros
cd src/rw_lidar/script
cd src
cd rw_lidar/
ls
cd scripts/
python3 rw.py
nano rw.py
python3 rw.py
nano rw.py
python3 rw.py
nano rw.py
roscore
rosrun rvr_ros rvr_async_driver.py
roslaunch ydlidar_ros_driver X4.launch
./rvr_ros/kill_nodes.sh
rostopic list
cd rvr_ros
./param_hex 
roslaunch multiple_launch.launch
rostopic list
rostopic echo scan
script ~/rvr_ros/outputfile.txt
cd rvr_ros
roslaunch images images.launch
rostopic list
rostopic echo rvr/wheels_speed
rostopic list
rostopic echo rvr/wheels_speed
cd rvr_robot_detection/utils
python3 simple_red_detect.py
cd
cdrvr_ros
cd rvr_ros
ls
cd src
ls
cd ydlidar_ros_driver/
ls
cd launch/
ls
nano X4.launch 
sudo shutdown now
roscore
roslaunch ydlidar_ros_driver X4.launch
rostopic list
rostopic echo scan
sudo shutdown now
roslaunch ydlidar_ros_driver X4.launch
rosrun rvr_ros rvr_async_driver.py
cd rvr_ros
ls
cd src
ls
cd rw_lidar/
ls
cd src
cd ..
cd scripts/
ls
python3 rw.py
nano rw.py
python3 rw.py
nano rw.py
sudo shutdown now
cd rvr_ros
ls
cd src
ls
cd rw_lidar/
cd scripts/
ls
nano rw.py
roscore
rostopic list
rostopic echo red_led_detected
sudo shutdown now
cd rvr_ros
ls
cd src
cd rw_lidar/
ls
cd scripts/
python3 rw.py
cd sphero-sdk-raspberrypi-python/
ls
cd getting_started/
ls
cd observer/
ls
cd api_and_shell/
ls
python3 echo.py
cd ..
cdleds
cd leds
ls
python3 set_multiple_leds.py 
cd ..
cd observer/
cd api_and_shell/
python3 echo.py
cd
roscore
sudo shutdown now
rostopic list
rostopic echo red_led_detected
rostopic list
rostopic echo red_led_detected
sudo shutdown now
cd rvr_robot_detection/
ls
cd utils/
ls
python3 simple_red_detect.py 
nano simple_red_detect.py 
python3 simple_red_detect.py 
nano simple_red_detect.py 
python3 simple_red_detect.py 
roscore
rostopic list
cd sphero-sdk-raspberrypi-python/
cd getting_started/
cd observer/
cd leds
nano set_all_leds_with_helper.py 
python3 set_all_leds_with_helper.py 
cd ..
cd api
cd observer/
cd api_and_shell/
ls
pytho3 echo.py 
python3 echo.py 
sudo shutdown now
cd sphero-sdk-raspberrypi-python/
cd getting_started/
cd api
cd observer/
cd api_and_shell/
python3 echo.py
cd ..
cd leds
python3 set_all_leds_with_helper.py 
roscore
cd
cd rvr_ros
ls
nano gmapping_metro3.launch 
nano capture.launch 
cd src
ls
cd rvr_ros
ls
cd src
ls
nano rvr_async_driver.py 
cd
cd rvr_ros
cd src
cd rw_lidar/
cd scripts/
nano rw.py
cd ..
cd images/
ls
cd src
nano imagespy.py 
cd ..
cd launch/
nano images.launch 
sudo shutdown now
rosrun rvr_ros rvr_async_driver.py
rostopic echo red_led_detected
cd rvr_ros
nano capture.launch 
cd src
cd rvr_ros
cd src
ls
nano rvr_async_driver.py 
sudo shutdown now
roscore
sudo shutdown now
xport ROS_MASTER_URI=http://192.168.1.131
export ROS_MASTER_URI=http://192.168.1.175
export ROS_IP=192.168.1.
export ROS_IP=192.168.1.175
export ROS_MASTER_URI=http://192.168.1.175:11311
export ROS_IP=192.168.1.175
roscore
nano ~/.bashrc
source ~/.bashrc
roslaunch images images.launch
script ~/rvr_ros/outputfile.txt
roscore
cd rvr_ros/src/rw_lidar/scripts
python3 rw.py
cd rvr_robot_detection/utils
python3 simple_red_detect.py
rosrun rvr_ros rvr_async_driver.py
cd rvr_ros 
./param_hex 
roslaunch multiple_launch.launch
cd
cd sphero-sdk-raspberrypi-python/
ls
cd getting_started/
ls
cd obs
cd api
ls
cd observer/
cd api_and_shell/
python3 echo.py
sudo shutdown now
roscore
sudo shutdown now
cd sphero-sdk-raspberrypi-python/
cd getting_started/
cd observer/
cd api_and_shell/
python3 echo.py
cd rvr_ros
ls
cd src
ls
cd rvr_ros
cd src
ls
nano rvr_async_driver.py 
sudo shutdown nos
sudo shutdown now
roslaunch ydlidar_ros_driver X4.launch
roscore
sudo shutdown now
./rvr_ros/kill_nodes.sh
rosrun rvr_ros rvr_async_driver.py
cd rvr_ros
ls
cd src
cd ydlidar_ros_driver/
cd launch/
nano X4.launch 
sudo shutdown now
roslaunch ydlidar_ros_driver X4.launch
rosrun rvr_ros rvr_async_driver.py
cd rvr_robot_detection/utils
python3 simple_red_detect.py
cd rvr_ros
script ~/rvr_ros/outputfile.txt
cd rvr_ros
./param_hex 
roslaunch multiple_launch.launch
sudo date -s "$(wget -qSO- --max-redirect=0 google.com 2>&1 | grep Date: | cut -d' ' -f5-8)Z"
roslaunch multiple_launch.launch
roslaunch images images.launch
cd rvr_ros/src/rw_lidar/scripts
python3 rw.py
cd ./rvr_ros/kill_nodes.sh 
cd
./rvr_ros/kill_nodes.sh 
sudo shutdown now
rostopic list
./rvr_ros/kill_nodes.sh 
rostopic list
sudo shutdown now
cd rvr_robot_detection/utils
python3 simple_red_detect.py
rostopic list
cd rvr_robot_detection/utils
python3 simple_red_detect.py
rostopic list
rostopic echo rvr2/red_led_detected
roslaunch ydlidar_ros_driver X4.launch
rostopic list
cd rvr_ros
script ~/rvr_ros/outputfile.txt
cd rvr_ros/src/rw_lidar/scripts
python3 rw.py
ls
python3 rw.py
cd
rostopic list
cd sphero-sdk-raspberrypi-python/
ls
cd getting_started/
ls
cd observer/
ls
cd api_and_shell/
ls
python3 echo.py
sudo shutdown now
rosrun rvr_ros rvr_async_driver.py
cd rvr_ros
./param_hex 
roslaunch multiple_launch.launch
roslaunch images images.launch
cd sphero-sdk-raspberrypi-python/
cd getting_started/
cd observer/
ls
cd api_and_shell/
ls
python3 echo.py
cd
python3 echo.py
cd sphero-sdk-raspberrypi-python/
cd getting_started/
cd observer/
cd api_and_shell/
python3 echo.py
rostopic list
rostopic echo rvr2/wheels_speed
python3 echo.py
rostopic list
rostopic echo rvr2/scan
rostopic echo scan
vf
cd
cd rvr_ros
ls
cd src
cd ydlidar_ros_driver/
;s
ls
cd launch/
ls
nano X4.launch 
cd ..
ls
cd src
ls
nano ydlidar_ros_driver.cpp 
cd ..
cd launch/
nano ydlidar_ros_driver.cpp 
nano X4.launch 
sudo shutdown now
cd rvr_robot_detection/utils
python3 simple_red_detect.py
rosrun rvr_ros rvr_async_driver.py
./rvr_ros/kill_nodes.sh
rosrun rvr_ros rvr_async_driver.py
roslaunch ydlidar_ros_driver X4.launch
cd rvr_ros/src/rw_lidar/scripts
python3 rw.py
cd rvr_ros
./param_hex 
roslaunch multiple_launch.launch
cd rvr_ros/src/rw_lidar/scripts
ls
python3 rw.py
nano rw.py
roslaunch images images.launch
exit
cd rvr_ros
ls
cd map_capture/
pwd
cd
touch *
sudo date -s "$(wget -qSO- --max-redirect=0 google.com 2>&1 | grep Date: | cut -d' ' -f5-8)Z"
cd rvr_robot_detection/utils
python3 simple_red_detect.py
rosrun rvr_ros rvr_async_driver.py
roslaunch ydlidar_ros_driver X4.launch
cd rvr_ros
script ~/rvr_ros/outputfile.txt
sudo shutdown now
cd rvr_ros/src/rw_lidar/scripts
python3 rw.py
rostopic list
rostopic echo rvr2/red_led_detected
./rvr_ros/kill_nodes.sh 
cd rvr_ros
./param_hex 
roslaunch multiple_launch.launch
cd rvr_ros
cd src
cd images/
ls
cd src
nano imagespy.py 
CD
cd
cd rvr_robot_detection/utils
python3 simple_red_detect.py
rosrun rvr_ros rvr_async_driver.py
roslaunch ydlidar_ros_driver X4.launch
cd rvr_ros/src/rw_lidar/scripts
python3 rw.py
cd rvr_ros
./param_hex 
roslaunch multiple_launch.launch
cd rvr_ros
roslaunch images images.launch
cd
./rvr_ros/kill_nodes.sh
sudo shutdown now
cd rvr_robot_detection/utils
python3 simple_red_detect.py
roslaunch ydlidar_ros_driver X4.launch
rosrun rvr_ros rvr_async_driver.py
cd rvr_ros/src/rw_lidar/scripts
python3 rw.py
cd rvr_ros
roslaunch images images.launch
cd
sudo shutdown now
cd rvr_ros
roslaunch multiple_launch.launch
./rvr_ros/kill_nodes.sh
cd rvr_ros
cd src
cd rw_lidar/
cd scripts/
nano rw.py
cd
cd rvr_robot_detection/utils
python3 simple_red_detect.py
cd rvr_ros/src/rw_lidar/scripts
python3 rw.py
roslaunch ydlidar_ros_driver X4.launch
cd rvr_ros
roslaunch images images.launch
sudo shutdown now
rosrun rvr_ros rvr_async_driver.py
cd rvr_ros
roslaunch multiple_launch.launch
cd rvr_robot_detection/utils
python3 simple_red_detect.py
cd rvr_ros
roslaunch multiple_launch.launch
cd rvr_ros
ls
rm -rf map_capture
mkdir map_capture
roslaunch ydlidar_ros_driver X4.launch
cd rvr_ros/src/rw_lidar/scripts
python3 rw.py
cd rvr_ros
sudo shutdown now
rosrun rvr_ros rvr_async_driver.py
roslaunch ydlidar_ros_driver X4.launch
cd rvr_robot_detection/utils
python3 simple_red_detect.py
cd rvr_ros/src/rw_lidar/scripts
python3 rw.py
cd rvr_ros
cd src
cd images/
ls
cd src
ls
nano imagespy.py 
cd
cd rvr_robot_detection/utils
python3 simple_red_detect.py
roslaunch ydlidar_ros_driver X4.launch
rosrun rvr_ros rvr_async_driver.py
cd rvr_ros
roslaunch images images.launch
cd map_capture/
ls
sudo shutdown now
cd rvr_ros
roslaunch multiple_launch.launch
./rvr_ros/kill_nodes.sh
cd rvr_ros
cd src
cd images/
cd src
nano imagespy.py 
clear
cd
cd rvr_robot_detection/utils
python3 simple_red_detect.py
python3 rw.py
sudo shutdown now
roslaunch ydlidar_ros_driver X4.launch
rosrun rvr_ros rvr_async_driver.py
cd rvr_ros
roslaunch multiple_launch.launch
cd rvr_ros
roslaunch images images.launch
cd rvr_ros
cd src
cd images/
cd src
ls
nano imagespy.py 
rm -rf images.py
> images.py
ls
rm -rf images.py
rm -rf imagespy.py
> imagespy.py
ls
nano imagespy.py 
cd
cd rvr_ros
cd src
cd ydlidar_ros_driver/
cd src
nano ydlidar_ros_driver.cpp 
cd
cd rvr_ros
ls
rm -rf map_capture
mkdir map_capture
ls
cd rvr_robot_detection/utils
python3 simple_red_detect.py
roslaunch ydlidar_ros_driver X4.launch
rosrun rvr_ros rvr_async_driver.py
cd rvr_ros
roslaunch multiple_launch.launch
cd rvr_ros
roslaunch images images.launch
cd src
cd images/
cd src
chmod +x imagespy.py
sudo shutdown now
cd rvr_ros/src/rw_lidar/scripts
python3 rw.py
./rvr_ros/kill_nodes.sh
                                                                                                                                                                                                                                                                                                                                                                                                 roslaunch images images.launch
exit
touch *
sudo date -s "$(wget -qSO- --max-redirect=0 google.com 2>&1 | grep Date: | cut -d' ' -f5-8)Z"
cd rvr_ros
ls
cd map_capture
ls
cd ..
nano outputfile.txt 
sudo shutdown now
cd rvr_robot_detection/utils
python3 simple_red_detect.py
roslaunch ydlidar_ros_driver X4.launch
rosrun rvr_ros rvr_async_driver.py
cd rvr_ros
roslaunch multiple_launch.launch
cd rvr_ros
roslaunch images images.launch
exit
script ~/rvr_ros/outputfile_A3.txt
touch *
sudo date -s "$(wget -qSO- --max-redirect=0 google.com 2>&1 | grep Date: | cut -d' ' -f5-8)Z"
sudo shutdown now
cd rvr_robot_detection/utils
python3 simple_red_detect.py
roslaunch ydlidar_ros_driver X4.launch
rosrun rvr_ros rvr_async_driver.py
cd rvr_ros/src/rw_lidar/scripts
python3 rw.py
./rvr_ros/kill_nodes.sh
roslaunch multiple_launch.launch
roslaunch images images.launch
touch *
sudo date -s "$(wget -qSO- --max-redirect=0 google.com 2>&1 | grep Date: | cut -d' ' -f5-8)Z"
cd rvr_ros
cd src
cd images/
cd src
nano imagespy.py 
cd rvr_robot_detection/utils
python3 simple_red_detect.py
roslaunch ydlidar_ros_driver X4.launch
cd rvr_ros/src/rw_lidar/scripts
python3 rw.py
sudo shutdown now
roslaunch images images.launch
exit
cd rvr_robot_detection/utils
python3 simple_red_detect.py
cd rvr_ros
script ~/rvr_ros/outputfile_A4.txt
cd src
cd images/
cd src
nano imagespy.py 
mv /home/sphero-rvr/rvr_ros/map_capture /home/sphero-rvr/rvr_ros/A4_map_capture
cd 
cd rvr_ros
ls
mkdir map_capture
cd A4_map_capture/
ls
cd
sudo shutdown now
roslaunch ydlidar_ros_driver X4.launch
cd rvr_ros
roslaunch multiple_launch.launch
cd rvr_ros/src/rw_lidar/scripts
python3 rw.py
roslaunch images images.launch
exit
cd rvr_ros
script ~/rvr_ros/outputfile_A5.txt
mv /home/sphero-rvr/rvr_ros/map_capture /home/sphero-rvr/rvr_ros/A5_map_capture
mkdir map_capture
ls
cd A5_map_capture/
ls
sudo shutdown now
roslaunch ydlidar_ros_driver X4.launch
rosrun rvr_ros rvr_async_driver.py
./rvr_ros/kill_nodes.sh
cd rvr_ros
roslaunch multiple_launch.launch
cd rvr_ros/src/rw_lidar/scripts
python3 rw.py
roslaunch images images.launch
exit
./rvr_ros/kill_nodes.sh
cd rvr_ros
roslaunch multiple_launch.launch
cd rvr_ros
mv /home/sphero-rvr/rvr_ros/map_capture /home/sphero-rvr/rvr_ros/A6_map_capture
mkdir map_capture
ls
sudo shutdown now
roslaunch ydlidar_ros_driver X4.launch
rosrun rvr_ros rvr_async_driver.py
cd rvr_ros/src/rw_lidar/scripts
python3 rw.py
cd rvr_robot_detection/utils
python3 simple_red_detect.py
roslaunch images images.launch
exit
cd rvr_ros
script ~/rvr_ros/outputfile_A7.txt
mv /home/sphero-rvr/rvr_ros/map_capture /home/sphero-rvr/rvr_ros/A7_map_capture
mkdir map_capture
cd src
cd images/
cd src
nano imagespy.py 
sudo shutdown now
cd rvr_robot_detection/utils
python3 simple_red_detect.py
cd rvr_ros
roslaunch multiple_launch.launch
roslaunch ydlidar_ros_driver X4.launch
rosrun rvr_ros rvr_async_driver.py
./rvr_ros/kill_nodes.sh
cd rvr_ros/src/rw_lidar/scripts
python3 rw.py
roslaunch images images.launch
exit
cd rvr_robot_detection/utils
python3 simple_red_detect.py
cd rvr_ros
roslaunch multiple_launch.launch
cd rvr_ros
mv /home/sphero-rvr/rvr_ros/map_capture /home/sphero-rvr/rvr_ros/A8_map_capture
mkdir map_capture
rosrun rvr_ros rvr_async_driver.py
roslaunch ydlidar_ros_driver X4.launch
cd rvr_ros/src/rw_lidar/scripts
python3 rw.py
sudo shutdown now
./rvr_ros/kill_nodes.sh
                                                                                                                                                                                                                    roslaunch images images.launch
exit
                                                                                                                                                                                                                                                                                                                                                                                   cd rvr_ros
roslaunch multiple_launch.launch
cd rvr_ros
script ~/rvr_ros/outputfile_A10.txt
roslaunch images images.launch
roslaunch ydlidar_ros_driver X4.launch
rosrun rvr_ros rvr_async_driver.py
touch *
sudo date -s "$(wget -qSO- --max-redirect=0 google.com 2>&1 | grep Date: | cut -d' ' -f5-8)Z"
cd rvr_robot_detection/utils
python3 simple_red_detect.py
cd rvr_ros/src/rw_lidar/scripts
python3 rw.py
cd
cd rvr_ros
mv /home/sphero-rvr/rvr_ros/map_capture /home/sphero-rvr/rvr_ros/A10_map_capture
mkdir map_capture
ls
roslaunch images images.launch
exit
cd rvr_ros
cd src
cd rvr_ros
cd src
ls 
nano rvr_async_driver.py 
cd
cd rvr_robot_detection/utils
python3 simple_red_detect.py
roslaunch ydlidar_ros_driver X4.launch
cd rvr_ros/src/rw_lidar/scripts
python3 rw.py
rosrun rvr_ros rvr_async_driver.py
cd rvr_ros
script ~/rvr_ros/outputfile_B1.txt
mv /home/sphero-rvr/rvr_ros/map_capture /home/sphero-rvr/rvr_ros/B1_map_capture
mkdir map_capture
sudo shutdown now
cd rvr_ros
roslaunch multiple_launch.launch
./rvr_ros/kill_nodes.sh
exit
cd rvr_ros/src/rw_lidar/scripts
python3 rw.py
spherorvr
./rvr_ros/kill_nodes.sh
cd rvr_robot_detection/utils
python3 simple_red_detect.py
roslaunch ydlidar_ros_driver X4.launch
rosrun rvr_ros rvr_async_driver.py
cd rvr_ros
roslaunch multiple_launch.launch
cd rvr_ros
mv /home/sphero-rvr/rvr_ros/map_capture /home/sphero-rvr/rvr_ros/B2_map_capture
mkdir map capture
