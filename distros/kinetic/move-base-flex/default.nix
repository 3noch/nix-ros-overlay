
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, mbf-abstract-core, mbf-abstract-nav, mbf-costmap-core, mbf-costmap-nav, mbf-msgs, mbf-simple-nav, mbf-utility }:
buildRosPackage {
  pname = "ros-kinetic-move-base-flex";
  version = "0.3.3-r1";

  src = fetchurl {
    url = "https://github.com/uos-gbp/move_base_flex-release/archive/release/kinetic/move_base_flex/0.3.3-1.tar.gz";
    name = "0.3.3-1.tar.gz";
    sha256 = "1f056bd5948e0fbd7051c3392a3235fe30c615a057d96b43cdd47eeb810a781e";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ mbf-abstract-core mbf-abstract-nav mbf-costmap-core mbf-costmap-nav mbf-msgs mbf-simple-nav mbf-utility ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Move Base Flex (MBF) is a backwards-compatible replacement for move_base. MBF can use existing plugins for move_base, and provides an enhanced version of the planner, controller and recovery plugin ROS interfaces. It exposes action servers for planning, controlling and recovering, providing detailed information of the current state and the plugin’s feedback. An external executive logic can use MBF and its actions to perform smart and flexible navigation strategies. Furthermore, MBF enables the use of other map representations, e.g. meshes or grid_map
       
       This package is a meta package and refers to the Move Base Flex stack packages.The abstract core of MBF – without any binding to a map representation – is represented by the <a href="http://wiki.ros.org/mbf_abstract_nav">mbf_abstract_nav</a> and the <a href="http://wiki.ros.org/mbf_abstract_core">mbf_abstract_core</a>. For navigation on costmaps see <a href="http://wiki.ros.org/mbf_costmap_nav">mbf_costmap_nav</a> and <a href="http://wiki.ros.org/mbf_costmap_core">mbf_costmap_core</a>.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
