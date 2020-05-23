
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cmake-modules, dynamic-reconfigure, geometry-msgs, laser-geometry, map-msgs, map-server, message-filters, message-generation, message-runtime, nav-msgs, pluginlib, rosbag, rosconsole, roscpp, rostest, rosunit, sensor-msgs, std-msgs, tf2, tf2-geometry-msgs, tf2-ros, tf2-sensor-msgs, visualization-msgs, voxel-grid }:
buildRosPackage {
  pname = "ros-noetic-costmap-2d";
  version = "1.17.0-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/navigation-release/archive/release/noetic/costmap_2d/1.17.0-1.tar.gz";
    name = "1.17.0-1.tar.gz";
    sha256 = "4198a0d80640c7b0d0cfb1d8a68671232fa839d39e66fa17042ce3e0cae23df3";
  };

  buildType = "catkin";
  buildInputs = [ cmake-modules message-generation tf2-geometry-msgs tf2-sensor-msgs ];
  checkInputs = [ map-server rosbag rostest rosunit ];
  propagatedBuildInputs = [ dynamic-reconfigure geometry-msgs laser-geometry map-msgs message-filters message-runtime nav-msgs pluginlib rosconsole roscpp rostest sensor-msgs std-msgs tf2 tf2-ros visualization-msgs voxel-grid ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package provides an implementation of a 2D costmap that takes in sensor
        data from the world, builds a 2D or 3D occupancy grid of the data (depending
        on whether a voxel based implementation is used), and inflates costs in a
        2D costmap based on the occupancy grid and a user specified inflation radius.
        This package also provides support for map_server based initialization of a
        costmap, rolling window based costmaps, and parameter based subscription to
        and configuration of sensor topics.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
