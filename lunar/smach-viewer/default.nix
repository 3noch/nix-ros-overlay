
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, pythonPackages, smach-ros, rostest, smach-msgs, graphviz }:
buildRosPackage {
  pname = "ros-lunar-smach-viewer";
  version = "2.0.2";

  src = fetchurl {
    url = https://github.com/jbohren/executive_smach_visualization-release/archive/release/lunar/smach_viewer/2.0.2-0.tar.gz;
    sha256 = "41d5f36caf445a1f7f2c3759ba93489e5fa79f3d0311b6e2df9577fc2b6d59bd";
  };

  buildInputs = [ rostest ];
  propagatedBuildInputs = [ smach-msgs smach-ros graphviz pythonPackages.wxPython ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The smach viewer is a GUI that shows the state of hierarchical
    SMACH state machines. It can visualize the possible transitions
    between states, as well as the currently active state and the
    values of user data that is passed around between states. The
    smach viewer uses the SMACH debugging interface based on
    the <a href="http://www.ros.org/wiki/smach_msgs">smach
    messages</a> to gather information from running state machines.'';
    #license = lib.licenses.BSD;
  };
}