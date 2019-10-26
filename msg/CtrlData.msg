# CtrlData.msg
# mode the controller is in
int16 mode

# coordinate, not reliable, just a reference
geometry_msgs/Quaternion coor

# only matters in working mode
int16 tracking_status

# safety issue 
int16[] lidar_levels

# homing, training status
bool is_origin_set
bool is_calibed
bool is_trained
bool is_calib_begin

# runtime info, "nd" means "RoutNode"
RouteNode nd_training

# the to-do list for a wokring-mode robot
RouteNode nd_target
RouteNode nd_ocp
RouteNode[] work_list