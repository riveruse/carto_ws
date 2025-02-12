# cartographer simlaztion mapping

## 1.先验条件
---
首先配置好ros2，然后执行以下代码
```
sudo apt install ros-humble-cartographer
sudo apt install ros-humble-cartographer-ros
```
然后检查一下安装情况
```
ros2 pkg list | grep cartographer
```
输出下面字样则表示安装成功
```
cartographer_ros
cartographer_ros_msgs
```
## 构建
```
cd carto_ws
colcon build
```
## 运行
```
chmod +x run_commands.sh
./run_commands.sh
```
再开一个终端
```
source ./install/setup.bash
ros2 launch ugv02_cartographer cartographer.launch.py
```
进入配置终端config
```
rviz2 -d slam.rviz
```
完成

![Example Image](/home/river/图片/截图/9554283DD42A7073D9ADA161ED116560.png)
