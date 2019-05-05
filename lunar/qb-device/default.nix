
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, qb-device-bringup, qb-device-description, catkin, qb-device-msgs, qb-device-srvs, qb-device-driver, qb-device-control, qb-device-hardware-interface }:
buildRosPackage {
  pname = "ros-lunar-qb-device";
  version = "2.0.1";

  src = fetchurl {
    url = https://bitbucket.org/qbrobotics/qbdevice-ros-release/get/release/lunar/qb_device/2.0.1-0.tar.gz;
    sha256 = "cec129a879d8cef969cb5cc5753b29ffb384701b74c9458012310e228ec45c38";
  };

  propagatedBuildInputs = [ qb-device-bringup qb-device-description qb-device-msgs qb-device-srvs qb-device-driver qb-device-control qb-device-hardware-interface ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package contains a device-independent ROS interface for qbrobotics® devices.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
