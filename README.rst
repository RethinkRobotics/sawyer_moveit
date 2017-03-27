Sawyer MoveIt
==============

The Sawyer MoveIt repo is intended as an interface to the MoveIt motion planning library
for enabling the development of complex 7-DOF trajectory generation.

This repository contains the packages for installation/use of the Sawyer Robot in MoveIt.

Installation
------------

+-----------------+---------------------------------------------------------------------------------+
| Please follow the Getting Started wiki page for instructions on installation of the Intera SDK:   |
| http://sdk.rethinkrobotics.com/intera/Workstation_Setup                                           |
+-----------------+---------------------------------------------------------------------------------+
| Then please follow the MoveIt Tutorial wiki page for instructions on getting started with MoveIt: |
| http://sdk.rethinkrobotics.com/intera/MoveIt_Tutorial                                             |
+-----------------+---------------------------------------------------------------------------------+

Code & Tickets
--------------

+-----------------+-------------------------------------------------------------------------------+
| Documentation   | http://sdk.rethinkrobotics.com/intera/                                        |
+-----------------+-------------------------------------------------------------------------------+
| Issues          | https://github.com/RethinkRobotics/sawyer_moveit/issues                       |
+-----------------+-------------------------------------------------------------------------------+
| Contributions   | https://github.com/RethinkRobotics/sawyer_moveit/blob/master/CONTRIBUTING.md  |
+-----------------+-------------------------------------------------------------------------------+

Sawyer Repository Overview
--------------------------

::

     .
     |
     +-- sawyer_moveit/             Sawyer MoveIt metapackage containing all Sawyer-specific packages
     |
     +-- sawyer_moveit.rosinstall   rosinstall script containing all required Sawyer dependency repos
     |
     +-- sawyer_moveit_config/      Custom MoveIt pacakge with config, launch, and srdf files for sawyer


Other Sawyer Repositories
-------------------------
+------------------+-----------------------------------------------------+
| intera_sdk       | https://github.com/RethinkRobotics/intera_sdk       |
+------------------+-----------------------------------------------------+
| intera_commom    | https://github.com/RethinkRobotics/intera_common    |
+------------------+-----------------------------------------------------+
| sawyer_robot     | https://github.com/RethinkRobotics/sawyer_robot     |
+------------------+-----------------------------------------------------+

Latest Release Information
--------------------------

http://sdk.rethinkrobotics.com/intera/Release-Changes
