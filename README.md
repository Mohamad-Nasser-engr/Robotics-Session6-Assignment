# Description 
This ROS2 workspace implements a simulated warehouse robot system where the robot is able to deliver items to clients and provide them with information about the stock levels of the items

## Functionalities:

1. Item Delivery Action Server:

- This Node simulates the delivery process. First the node makes sure that the request can be completed by checking if there is enough stock of the wanted item (this is done using the stock checker client). After that, the node simulates the delivery process by giving feedback on the percentage of completion of the process.

2. Item Delivery Client:

- This node will send a request to the item delivery action.

3. Stock Checker Server:

- This node will recieve a request from the Stock checker client and then return to it the quantity of stock of the requested item. Note that the items' names and quantities are represented as a dictionary that is initialized with the node.

4. Stock Checker Client:

- This node will send the request to the stock checker server. This node will also be called in the item delivery action server to make sure that the warehouse has enough stock for the delivery.
- Additionally this node implements a plotting feature to show the stock quantity of all items in the warehouse. **Note that this plot need to be closed for the node to continue working**

5. launch file:
- The launch file will be used to run the item delivery action server, the item delivery client and the stock checker server. 
Note that the stock checker client won't be explictly runned from the launch file since it will be runned inside the item delivery action server.

## Usage:

1. Pre-requisites:

- create a ROS2 workspace

2. Build the package 

- Clone the repository:

	git clone git@github.com:Mohamad-Nasser-engr/Robotics-Session6-Assignment.git 

- change directory:

	cd Robotics-Session6-Assignment/Session6_ros2_ws/src/

- Source ROS2 and bashrc

	source /opt/ros/humble/setup.bash

	source install/setup.bash

3. Launch the package:

	cd Robotics-Session6-Assignment/Session6_ros2_ws

	ros2 launch launch/launch_file.py item_name:=item1 quantity:=50

Note: 'item_name' must match one of the names in the stock checker server for the goal to be accepted, additionally, the quantity requested of the chosen item must be smaller or equal to the stock quantity.




