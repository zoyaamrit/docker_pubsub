Proof of concept for using docker with ROS. 
This includes loading a different ROS Distro into a docker container than the local host and then sending commands to run the publisher and subscriber built by the ROS code separately.

//Will operate on Linux with docker installed. 

To run the entire program, clone the code into local host and cd to where the director is hosted. 
~/docker-pubsub 

Then, call make run to launch both listener and talker. 
