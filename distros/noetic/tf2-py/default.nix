
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, rospy, tf2 }:
buildRosPackage {
  pname = "ros-noetic-tf2-py";
  version = "0.7.1-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/geometry2-release/archive/release/noetic/tf2_py/0.7.1-1.tar.gz";
    name = "0.7.1-1.tar.gz";
    sha256 = "5d47f179e1def9396df0a7f41eecba1369f5eb4a9c79d9bf6fec2c118e530573";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ rospy tf2 ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The tf2_py package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
