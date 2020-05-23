
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, costmap-2d, geometry-msgs, std-msgs, tf2-ros }:
buildRosPackage {
  pname = "ros-noetic-nav-core";
  version = "1.17.0-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/navigation-release/archive/release/noetic/nav_core/1.17.0-1.tar.gz";
    name = "1.17.0-1.tar.gz";
    sha256 = "7273052575ba514abd581c31793bfd2d95375de0012f0d67905ab0cddcd76ded";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ costmap-2d geometry-msgs std-msgs tf2-ros ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package provides common interfaces for navigation specific robot actions. Currently, this package provides the BaseGlobalPlanner, BaseLocalPlanner, and RecoveryBehavior interfaces, which can be used to build actions that can easily swap their planner, local controller, or recovery behavior for new versions adhering to the same interface.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
