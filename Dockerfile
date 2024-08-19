
FROM osrf/ros:humble-desktop-full-jammy
ARG WS_NAME=ros_ws
WORKDIR /root/


RUN apt-get update && apt-get install -y python3-colcon-common-extensions 

RUN mkdir -p ${WS_NAME}/src
COPY . ${WS_NAME}/src

# command not working from Dockerfile 
# same command can be loaded into interactive terminal from the image 
# and executed to run publisher/subscriber 

RUN cd ${WS_NAME} && colcon build
RUN source install/setup.bash 
RUN ros2 run cpp_pubsub talker
# to exec publisher: ros2 run cpp_pubsub talker 
# to exec subcriber: ros2 run cpp_pubsub listener
CMD ['bash']