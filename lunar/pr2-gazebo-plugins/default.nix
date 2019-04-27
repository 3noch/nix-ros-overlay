
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cv-bridge, polled-camera, gazebo-plugins, rospy, diagnostic-msgs, tf, geometry-msgs, gazebo-msgs, image-transport, gazeboSimulator, pr2-controller-manager, message-generation, message-runtime, angles, pr2-msgs, gazebo-ros, std-srvs, pr2-hardware-interface, orocos-kdl, catkin, nav-msgs, urdf, std-msgs, roscpp, pr2-mechanism-model, sensor-msgs, diagnostic-updater }:
buildRosPackage {
  pname = "ros-lunar-pr2-gazebo-plugins";
  version = "2.0.13-r1";

  src = fetchurl {
    url = https://github.com/pr2-gbp/pr2_simulator-release/archive/release/lunar/pr2_gazebo_plugins/2.0.13-1.tar.gz;
    sha256 = "03d29abaae1593276e97ff8d6e35639ba73051053d5c77a16250050d7725e69d";
  };

  buildInputs = [ std-srvs pr2-hardware-interface orocos-kdl gazeboSimulator.gazebo cv-bridge polled-camera gazebo-plugins nav-msgs urdf rospy std-msgs diagnostic-msgs tf roscpp pr2-mechanism-model gazebo-msgs geometry-msgs image-transport sensor-msgs diagnostic-updater pr2-controller-manager message-generation message-runtime angles pr2-msgs ];
  propagatedBuildInputs = [ gazebo-ros pr2-hardware-interface orocos-kdl gazeboSimulator.gazebo cv-bridge polled-camera gazebo-plugins nav-msgs urdf rospy std-msgs diagnostic-msgs tf roscpp pr2-mechanism-model gazebo-msgs geometry-msgs image-transport sensor-msgs diagnostic-updater pr2-controller-manager message-generation message-runtime angles pr2-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Gazebo Plugins for various PR2-specific sensors and actuators on the robot.'';
    #license = lib.licenses.BSD;
  };
}