#!/bin/bash

# 启动第一条命令
echo "正在启动第一条命令..."
source install/setup.bash &

# 启动第二条命令
echo "正在启动第二条命令..."
ros2 launch fishbot_description gazebo_sim.launch.py &

# 等待所有后台进程结束
wait

echo "所有命令已执行完毕。"
单