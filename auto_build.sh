docker stop ros2_moveit2  
docker rm ros2_moveit2   
docker rmi ros-ros2_moveit
docker compose -f docker-compose.yml up --build -d