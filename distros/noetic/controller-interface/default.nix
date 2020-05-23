
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, hardware-interface, roscpp }:
buildRosPackage {
  pname = "ros-noetic-controller-interface";
  version = "0.19.1-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/ros_control-release/archive/release/noetic/controller_interface/0.19.1-1.tar.gz";
    name = "0.19.1-1.tar.gz";
    sha256 = "3ce1fe17e4fad5cfcee82ed0da0baa6aca6adf79a459abc15fe895b0e8e5f141";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ hardware-interface roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Interface base class for controllers.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
