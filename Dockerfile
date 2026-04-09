FROM osrf/ros:humble-desktop-full

# MoveIt2 + 의존성 설치
RUN apt-get update && apt-get install -y \
    ros-humble-moveit \
    ros-humble-moveit-visual-tools \
    ros-humble-rviz2 \
    ros-humble-moveit-resources-panda-moveit-config \
    ros-humble-moveit-resources-panda-description \
    ros-humble-ros2-controllers \
    ros-humble-ros2-control \
    mesa-utils \
    libgl1-mesa-dri \
    libegl1-mesa \
    && rm -rf /var/lib/apt/lists/*

# ROS2 환경 자동 소싱
RUN echo "source /opt/ros/humble/setup.bash" >> /root/.bashrc

WORKDIR /root/ros2_ws
