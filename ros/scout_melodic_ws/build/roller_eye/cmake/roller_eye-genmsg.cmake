# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "roller_eye: 11 messages, 25 services")

set(MSG_I_FLAGS "-Iroller_eye:/home/newt/Desktop/moorebot-scout/ros/scout_melodic_ws/src/roller_eye/msg;-Istd_msgs:/home/newt/ros_catkin_ws/devel/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(roller_eye_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/newt/Desktop/moorebot-scout/ros/scout_melodic_ws/src/roller_eye/srv/record_get_files.srv" NAME_WE)
add_custom_target(_roller_eye_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "roller_eye" "/home/newt/Desktop/moorebot-scout/ros/scout_melodic_ws/src/roller_eye/srv/record_get_files.srv" "roller_eye/record"
)

get_filename_component(_filename "/home/newt/Desktop/moorebot-scout/ros/scout_melodic_ws/src/roller_eye/msg/task.msg" NAME_WE)
add_custom_target(_roller_eye_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "roller_eye" "/home/newt/Desktop/moorebot-scout/ros/scout_melodic_ws/src/roller_eye/msg/task.msg" ""
)

get_filename_component(_filename "/home/newt/Desktop/moorebot-scout/ros/scout_melodic_ws/src/roller_eye/srv/record_get_status.srv" NAME_WE)
add_custom_target(_roller_eye_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "roller_eye" "/home/newt/Desktop/moorebot-scout/ros/scout_melodic_ws/src/roller_eye/srv/record_get_status.srv" ""
)

get_filename_component(_filename "/home/newt/Desktop/moorebot-scout/ros/scout_melodic_ws/src/roller_eye/msg/wifi_config_info.msg" NAME_WE)
add_custom_target(_roller_eye_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "roller_eye" "/home/newt/Desktop/moorebot-scout/ros/scout_melodic_ws/src/roller_eye/msg/wifi_config_info.msg" ""
)

get_filename_component(_filename "/home/newt/Desktop/moorebot-scout/ros/scout_melodic_ws/src/roller_eye/msg/wifi_info.msg" NAME_WE)
add_custom_target(_roller_eye_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "roller_eye" "/home/newt/Desktop/moorebot-scout/ros/scout_melodic_ws/src/roller_eye/msg/wifi_info.msg" ""
)

get_filename_component(_filename "/home/newt/Desktop/moorebot-scout/ros/scout_melodic_ws/src/roller_eye/srv/record_get_file_num.srv" NAME_WE)
add_custom_target(_roller_eye_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "roller_eye" "/home/newt/Desktop/moorebot-scout/ros/scout_melodic_ws/src/roller_eye/srv/record_get_file_num.srv" ""
)

get_filename_component(_filename "/home/newt/Desktop/moorebot-scout/ros/scout_melodic_ws/src/roller_eye/srv/record_clean.srv" NAME_WE)
add_custom_target(_roller_eye_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "roller_eye" "/home/newt/Desktop/moorebot-scout/ros/scout_melodic_ws/src/roller_eye/srv/record_clean.srv" ""
)

get_filename_component(_filename "/home/newt/Desktop/moorebot-scout/ros/scout_melodic_ws/src/roller_eye/srv/rtmp_stop.srv" NAME_WE)
add_custom_target(_roller_eye_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "roller_eye" "/home/newt/Desktop/moorebot-scout/ros/scout_melodic_ws/src/roller_eye/srv/rtmp_stop.srv" ""
)

get_filename_component(_filename "/home/newt/Desktop/moorebot-scout/ros/scout_melodic_ws/src/roller_eye/srv/record_start.srv" NAME_WE)
add_custom_target(_roller_eye_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "roller_eye" "/home/newt/Desktop/moorebot-scout/ros/scout_melodic_ws/src/roller_eye/srv/record_start.srv" ""
)

get_filename_component(_filename "/home/newt/Desktop/moorebot-scout/ros/scout_melodic_ws/src/roller_eye/srv/nav_cancel.srv" NAME_WE)
add_custom_target(_roller_eye_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "roller_eye" "/home/newt/Desktop/moorebot-scout/ros/scout_melodic_ws/src/roller_eye/srv/nav_cancel.srv" ""
)

get_filename_component(_filename "/home/newt/Desktop/moorebot-scout/ros/scout_melodic_ws/src/roller_eye/srv/wifi_switch_ssid_key.srv" NAME_WE)
add_custom_target(_roller_eye_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "roller_eye" "/home/newt/Desktop/moorebot-scout/ros/scout_melodic_ws/src/roller_eye/srv/wifi_switch_ssid_key.srv" ""
)

get_filename_component(_filename "/home/newt/Desktop/moorebot-scout/ros/scout_melodic_ws/src/roller_eye/srv/record_delete_file.srv" NAME_WE)
add_custom_target(_roller_eye_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "roller_eye" "/home/newt/Desktop/moorebot-scout/ros/scout_melodic_ws/src/roller_eye/srv/record_delete_file.srv" ""
)

get_filename_component(_filename "/home/newt/Desktop/moorebot-scout/ros/scout_melodic_ws/src/roller_eye/msg/patrol_status.msg" NAME_WE)
add_custom_target(_roller_eye_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "roller_eye" "/home/newt/Desktop/moorebot-scout/ros/scout_melodic_ws/src/roller_eye/msg/patrol_status.msg" ""
)

get_filename_component(_filename "/home/newt/Desktop/moorebot-scout/ros/scout_melodic_ws/src/roller_eye/srv/nav_patrol.srv" NAME_WE)
add_custom_target(_roller_eye_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "roller_eye" "/home/newt/Desktop/moorebot-scout/ros/scout_melodic_ws/src/roller_eye/srv/nav_patrol.srv" ""
)

get_filename_component(_filename "/home/newt/Desktop/moorebot-scout/ros/scout_melodic_ws/src/roller_eye/srv/nav_list_path.srv" NAME_WE)
add_custom_target(_roller_eye_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "roller_eye" "/home/newt/Desktop/moorebot-scout/ros/scout_melodic_ws/src/roller_eye/srv/nav_list_path.srv" ""
)

get_filename_component(_filename "/home/newt/Desktop/moorebot-scout/ros/scout_melodic_ws/src/roller_eye/msg/frame.msg" NAME_WE)
add_custom_target(_roller_eye_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "roller_eye" "/home/newt/Desktop/moorebot-scout/ros/scout_melodic_ws/src/roller_eye/msg/frame.msg" ""
)

get_filename_component(_filename "/home/newt/Desktop/moorebot-scout/ros/scout_melodic_ws/src/roller_eye/srv/nav_mag_calibra.srv" NAME_WE)
add_custom_target(_roller_eye_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "roller_eye" "/home/newt/Desktop/moorebot-scout/ros/scout_melodic_ws/src/roller_eye/srv/nav_mag_calibra.srv" ""
)

get_filename_component(_filename "/home/newt/Desktop/moorebot-scout/ros/scout_melodic_ws/src/roller_eye/srv/rtmp_start.srv" NAME_WE)
add_custom_target(_roller_eye_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "roller_eye" "/home/newt/Desktop/moorebot-scout/ros/scout_melodic_ws/src/roller_eye/srv/rtmp_start.srv" ""
)

get_filename_component(_filename "/home/newt/Desktop/moorebot-scout/ros/scout_melodic_ws/src/roller_eye/srv/record_stop.srv" NAME_WE)
add_custom_target(_roller_eye_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "roller_eye" "/home/newt/Desktop/moorebot-scout/ros/scout_melodic_ws/src/roller_eye/srv/record_stop.srv" ""
)

get_filename_component(_filename "/home/newt/Desktop/moorebot-scout/ros/scout_melodic_ws/src/roller_eye/msg/record.msg" NAME_WE)
add_custom_target(_roller_eye_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "roller_eye" "/home/newt/Desktop/moorebot-scout/ros/scout_melodic_ws/src/roller_eye/msg/record.msg" ""
)

get_filename_component(_filename "/home/newt/Desktop/moorebot-scout/ros/scout_melodic_ws/src/roller_eye/msg/detect.msg" NAME_WE)
add_custom_target(_roller_eye_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "roller_eye" "/home/newt/Desktop/moorebot-scout/ros/scout_melodic_ws/src/roller_eye/msg/detect.msg" ""
)

get_filename_component(_filename "/home/newt/Desktop/moorebot-scout/ros/scout_melodic_ws/src/roller_eye/srv/nav_get_status.srv" NAME_WE)
add_custom_target(_roller_eye_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "roller_eye" "/home/newt/Desktop/moorebot-scout/ros/scout_melodic_ws/src/roller_eye/srv/nav_get_status.srv" ""
)

get_filename_component(_filename "/home/newt/Desktop/moorebot-scout/ros/scout_melodic_ws/src/roller_eye/msg/status.msg" NAME_WE)
add_custom_target(_roller_eye_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "roller_eye" "/home/newt/Desktop/moorebot-scout/ros/scout_melodic_ws/src/roller_eye/msg/status.msg" ""
)

get_filename_component(_filename "/home/newt/Desktop/moorebot-scout/ros/scout_melodic_ws/src/roller_eye/msg/point.msg" NAME_WE)
add_custom_target(_roller_eye_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "roller_eye" "/home/newt/Desktop/moorebot-scout/ros/scout_melodic_ws/src/roller_eye/msg/point.msg" ""
)

get_filename_component(_filename "/home/newt/Desktop/moorebot-scout/ros/scout_melodic_ws/src/roller_eye/srv/nav_path_save.srv" NAME_WE)
add_custom_target(_roller_eye_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "roller_eye" "/home/newt/Desktop/moorebot-scout/ros/scout_melodic_ws/src/roller_eye/srv/nav_path_save.srv" ""
)

get_filename_component(_filename "/home/newt/Desktop/moorebot-scout/ros/scout_melodic_ws/src/roller_eye/srv/wifi_switch_mode.srv" NAME_WE)
add_custom_target(_roller_eye_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "roller_eye" "/home/newt/Desktop/moorebot-scout/ros/scout_melodic_ws/src/roller_eye/srv/wifi_switch_mode.srv" ""
)

get_filename_component(_filename "/home/newt/Desktop/moorebot-scout/ros/scout_melodic_ws/src/roller_eye/srv/nav_delete_path.srv" NAME_WE)
add_custom_target(_roller_eye_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "roller_eye" "/home/newt/Desktop/moorebot-scout/ros/scout_melodic_ws/src/roller_eye/srv/nav_delete_path.srv" ""
)

get_filename_component(_filename "/home/newt/Desktop/moorebot-scout/ros/scout_melodic_ws/src/roller_eye/srv/nav_patrol_stop.srv" NAME_WE)
add_custom_target(_roller_eye_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "roller_eye" "/home/newt/Desktop/moorebot-scout/ros/scout_melodic_ws/src/roller_eye/srv/nav_patrol_stop.srv" ""
)

get_filename_component(_filename "/home/newt/Desktop/moorebot-scout/ros/scout_melodic_ws/src/roller_eye/srv/record_get_file_path.srv" NAME_WE)
add_custom_target(_roller_eye_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "roller_eye" "/home/newt/Desktop/moorebot-scout/ros/scout_melodic_ws/src/roller_eye/srv/record_get_file_path.srv" ""
)

get_filename_component(_filename "/home/newt/Desktop/moorebot-scout/ros/scout_melodic_ws/src/roller_eye/srv/nav_path_start.srv" NAME_WE)
add_custom_target(_roller_eye_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "roller_eye" "/home/newt/Desktop/moorebot-scout/ros/scout_melodic_ws/src/roller_eye/srv/nav_path_start.srv" ""
)

get_filename_component(_filename "/home/newt/Desktop/moorebot-scout/ros/scout_melodic_ws/src/roller_eye/srv/sched_add_mod.srv" NAME_WE)
add_custom_target(_roller_eye_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "roller_eye" "/home/newt/Desktop/moorebot-scout/ros/scout_melodic_ws/src/roller_eye/srv/sched_add_mod.srv" "roller_eye/task"
)

get_filename_component(_filename "/home/newt/Desktop/moorebot-scout/ros/scout_melodic_ws/src/roller_eye/msg/alexskill.msg" NAME_WE)
add_custom_target(_roller_eye_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "roller_eye" "/home/newt/Desktop/moorebot-scout/ros/scout_melodic_ws/src/roller_eye/msg/alexskill.msg" ""
)

get_filename_component(_filename "/home/newt/Desktop/moorebot-scout/ros/scout_melodic_ws/src/roller_eye/srv/wifi_scan_list.srv" NAME_WE)
add_custom_target(_roller_eye_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "roller_eye" "/home/newt/Desktop/moorebot-scout/ros/scout_melodic_ws/src/roller_eye/srv/wifi_scan_list.srv" "roller_eye/wifi_info"
)

get_filename_component(_filename "/home/newt/Desktop/moorebot-scout/ros/scout_melodic_ws/src/roller_eye/srv/video_set_resolution.srv" NAME_WE)
add_custom_target(_roller_eye_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "roller_eye" "/home/newt/Desktop/moorebot-scout/ros/scout_melodic_ws/src/roller_eye/srv/video_set_resolution.srv" ""
)

get_filename_component(_filename "/home/newt/Desktop/moorebot-scout/ros/scout_melodic_ws/src/roller_eye/srv/nav_get_patrol_name.srv" NAME_WE)
add_custom_target(_roller_eye_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "roller_eye" "/home/newt/Desktop/moorebot-scout/ros/scout_melodic_ws/src/roller_eye/srv/nav_get_patrol_name.srv" ""
)

get_filename_component(_filename "/home/newt/Desktop/moorebot-scout/ros/scout_melodic_ws/src/roller_eye/msg/contour.msg" NAME_WE)
add_custom_target(_roller_eye_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "roller_eye" "/home/newt/Desktop/moorebot-scout/ros/scout_melodic_ws/src/roller_eye/msg/contour.msg" "roller_eye/point"
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(roller_eye
  "/home/newt/Desktop/moorebot-scout/ros/scout_melodic_ws/src/roller_eye/msg/task.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/roller_eye
)
_generate_msg_cpp(roller_eye
  "/home/newt/Desktop/moorebot-scout/ros/scout_melodic_ws/src/roller_eye/msg/wifi_config_info.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/roller_eye
)
_generate_msg_cpp(roller_eye
  "/home/newt/Desktop/moorebot-scout/ros/scout_melodic_ws/src/roller_eye/msg/record.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/roller_eye
)
_generate_msg_cpp(roller_eye
  "/home/newt/Desktop/moorebot-scout/ros/scout_melodic_ws/src/roller_eye/msg/detect.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/roller_eye
)
_generate_msg_cpp(roller_eye
  "/home/newt/Desktop/moorebot-scout/ros/scout_melodic_ws/src/roller_eye/msg/point.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/roller_eye
)
_generate_msg_cpp(roller_eye
  "/home/newt/Desktop/moorebot-scout/ros/scout_melodic_ws/src/roller_eye/msg/patrol_status.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/roller_eye
)
_generate_msg_cpp(roller_eye
  "/home/newt/Desktop/moorebot-scout/ros/scout_melodic_ws/src/roller_eye/msg/status.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/roller_eye
)
_generate_msg_cpp(roller_eye
  "/home/newt/Desktop/moorebot-scout/ros/scout_melodic_ws/src/roller_eye/msg/alexskill.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/roller_eye
)
_generate_msg_cpp(roller_eye
  "/home/newt/Desktop/moorebot-scout/ros/scout_melodic_ws/src/roller_eye/msg/wifi_info.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/roller_eye
)
_generate_msg_cpp(roller_eye
  "/home/newt/Desktop/moorebot-scout/ros/scout_melodic_ws/src/roller_eye/msg/frame.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/roller_eye
)
_generate_msg_cpp(roller_eye
  "/home/newt/Desktop/moorebot-scout/ros/scout_melodic_ws/src/roller_eye/msg/contour.msg"
  "${MSG_I_FLAGS}"
  "/home/newt/Desktop/moorebot-scout/ros/scout_melodic_ws/src/roller_eye/msg/point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/roller_eye
)

### Generating Services
_generate_srv_cpp(roller_eye
  "/home/newt/Desktop/moorebot-scout/ros/scout_melodic_ws/src/roller_eye/srv/record_get_files.srv"
  "${MSG_I_FLAGS}"
  "/home/newt/Desktop/moorebot-scout/ros/scout_melodic_ws/src/roller_eye/msg/record.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/roller_eye
)
_generate_srv_cpp(roller_eye
  "/home/newt/Desktop/moorebot-scout/ros/scout_melodic_ws/src/roller_eye/srv/record_get_status.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/roller_eye
)
_generate_srv_cpp(roller_eye
  "/home/newt/Desktop/moorebot-scout/ros/scout_melodic_ws/src/roller_eye/srv/record_get_file_path.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/roller_eye
)
_generate_srv_cpp(roller_eye
  "/home/newt/Desktop/moorebot-scout/ros/scout_melodic_ws/src/roller_eye/srv/record_clean.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/roller_eye
)
_generate_srv_cpp(roller_eye
  "/home/newt/Desktop/moorebot-scout/ros/scout_melodic_ws/src/roller_eye/srv/rtmp_stop.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/roller_eye
)
_generate_srv_cpp(roller_eye
  "/home/newt/Desktop/moorebot-scout/ros/scout_melodic_ws/src/roller_eye/srv/record_start.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/roller_eye
)
_generate_srv_cpp(roller_eye
  "/home/newt/Desktop/moorebot-scout/ros/scout_melodic_ws/src/roller_eye/srv/nav_cancel.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/roller_eye
)
_generate_srv_cpp(roller_eye
  "/home/newt/Desktop/moorebot-scout/ros/scout_melodic_ws/src/roller_eye/srv/wifi_switch_ssid_key.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/roller_eye
)
_generate_srv_cpp(roller_eye
  "/home/newt/Desktop/moorebot-scout/ros/scout_melodic_ws/src/roller_eye/srv/nav_path_save.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/roller_eye
)
_generate_srv_cpp(roller_eye
  "/home/newt/Desktop/moorebot-scout/ros/scout_melodic_ws/src/roller_eye/srv/nav_patrol.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/roller_eye
)
_generate_srv_cpp(roller_eye
  "/home/newt/Desktop/moorebot-scout/ros/scout_melodic_ws/src/roller_eye/srv/nav_list_path.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/roller_eye
)
_generate_srv_cpp(roller_eye
  "/home/newt/Desktop/moorebot-scout/ros/scout_melodic_ws/src/roller_eye/srv/wifi_switch_mode.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/roller_eye
)
_generate_srv_cpp(roller_eye
  "/home/newt/Desktop/moorebot-scout/ros/scout_melodic_ws/src/roller_eye/srv/nav_mag_calibra.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/roller_eye
)
_generate_srv_cpp(roller_eye
  "/home/newt/Desktop/moorebot-scout/ros/scout_melodic_ws/src/roller_eye/srv/rtmp_start.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/roller_eye
)
_generate_srv_cpp(roller_eye
  "/home/newt/Desktop/moorebot-scout/ros/scout_melodic_ws/src/roller_eye/srv/record_stop.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/roller_eye
)
_generate_srv_cpp(roller_eye
  "/home/newt/Desktop/moorebot-scout/ros/scout_melodic_ws/src/roller_eye/srv/nav_get_status.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/roller_eye
)
_generate_srv_cpp(roller_eye
  "/home/newt/Desktop/moorebot-scout/ros/scout_melodic_ws/src/roller_eye/srv/record_delete_file.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/roller_eye
)
_generate_srv_cpp(roller_eye
  "/home/newt/Desktop/moorebot-scout/ros/scout_melodic_ws/src/roller_eye/srv/nav_delete_path.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/roller_eye
)
_generate_srv_cpp(roller_eye
  "/home/newt/Desktop/moorebot-scout/ros/scout_melodic_ws/src/roller_eye/srv/nav_patrol_stop.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/roller_eye
)
_generate_srv_cpp(roller_eye
  "/home/newt/Desktop/moorebot-scout/ros/scout_melodic_ws/src/roller_eye/srv/record_get_file_num.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/roller_eye
)
_generate_srv_cpp(roller_eye
  "/home/newt/Desktop/moorebot-scout/ros/scout_melodic_ws/src/roller_eye/srv/nav_path_start.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/roller_eye
)
_generate_srv_cpp(roller_eye
  "/home/newt/Desktop/moorebot-scout/ros/scout_melodic_ws/src/roller_eye/srv/sched_add_mod.srv"
  "${MSG_I_FLAGS}"
  "/home/newt/Desktop/moorebot-scout/ros/scout_melodic_ws/src/roller_eye/msg/task.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/roller_eye
)
_generate_srv_cpp(roller_eye
  "/home/newt/Desktop/moorebot-scout/ros/scout_melodic_ws/src/roller_eye/srv/wifi_scan_list.srv"
  "${MSG_I_FLAGS}"
  "/home/newt/Desktop/moorebot-scout/ros/scout_melodic_ws/src/roller_eye/msg/wifi_info.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/roller_eye
)
_generate_srv_cpp(roller_eye
  "/home/newt/Desktop/moorebot-scout/ros/scout_melodic_ws/src/roller_eye/srv/video_set_resolution.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/roller_eye
)
_generate_srv_cpp(roller_eye
  "/home/newt/Desktop/moorebot-scout/ros/scout_melodic_ws/src/roller_eye/srv/nav_get_patrol_name.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/roller_eye
)

### Generating Module File
_generate_module_cpp(roller_eye
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/roller_eye
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(roller_eye_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(roller_eye_generate_messages roller_eye_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/newt/Desktop/moorebot-scout/ros/scout_melodic_ws/src/roller_eye/srv/record_get_files.srv" NAME_WE)
add_dependencies(roller_eye_generate_messages_cpp _roller_eye_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/newt/Desktop/moorebot-scout/ros/scout_melodic_ws/src/roller_eye/msg/task.msg" NAME_WE)
add_dependencies(roller_eye_generate_messages_cpp _roller_eye_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/newt/Desktop/moorebot-scout/ros/scout_melodic_ws/src/roller_eye/srv/record_get_status.srv" NAME_WE)
add_dependencies(roller_eye_generate_messages_cpp _roller_eye_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/newt/Desktop/moorebot-scout/ros/scout_melodic_ws/src/roller_eye/msg/wifi_config_info.msg" NAME_WE)
add_dependencies(roller_eye_generate_messages_cpp _roller_eye_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/newt/Desktop/moorebot-scout/ros/scout_melodic_ws/src/roller_eye/msg/wifi_info.msg" NAME_WE)
add_dependencies(roller_eye_generate_messages_cpp _roller_eye_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/newt/Desktop/moorebot-scout/ros/scout_melodic_ws/src/roller_eye/srv/record_get_file_num.srv" NAME_WE)
add_dependencies(roller_eye_generate_messages_cpp _roller_eye_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/newt/Desktop/moorebot-scout/ros/scout_melodic_ws/src/roller_eye/srv/record_clean.srv" NAME_WE)
add_dependencies(roller_eye_generate_messages_cpp _roller_eye_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/newt/Desktop/moorebot-scout/ros/scout_melodic_ws/src/roller_eye/srv/rtmp_stop.srv" NAME_WE)
add_dependencies(roller_eye_generate_messages_cpp _roller_eye_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/newt/Desktop/moorebot-scout/ros/scout_melodic_ws/src/roller_eye/srv/record_start.srv" NAME_WE)
add_dependencies(roller_eye_generate_messages_cpp _roller_eye_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/newt/Desktop/moorebot-scout/ros/scout_melodic_ws/src/roller_eye/srv/nav_cancel.srv" NAME_WE)
add_dependencies(roller_eye_generate_messages_cpp _roller_eye_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/newt/Desktop/moorebot-scout/ros/scout_melodic_ws/src/roller_eye/srv/wifi_switch_ssid_key.srv" NAME_WE)
add_dependencies(roller_eye_generate_messages_cpp _roller_eye_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/newt/Desktop/moorebot-scout/ros/scout_melodic_ws/src/roller_eye/srv/record_delete_file.srv" NAME_WE)
add_dependencies(roller_eye_generate_messages_cpp _roller_eye_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/newt/Desktop/moorebot-scout/ros/scout_melodic_ws/src/roller_eye/msg/patrol_status.msg" NAME_WE)
add_dependencies(roller_eye_generate_messages_cpp _roller_eye_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/newt/Desktop/moorebot-scout/ros/scout_melodic_ws/src/roller_eye/srv/nav_patrol.srv" NAME_WE)
add_dependencies(roller_eye_generate_messages_cpp _roller_eye_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/newt/Desktop/moorebot-scout/ros/scout_melodic_ws/src/roller_eye/srv/nav_list_path.srv" NAME_WE)
add_dependencies(roller_eye_generate_messages_cpp _roller_eye_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/newt/Desktop/moorebot-scout/ros/scout_melodic_ws/src/roller_eye/msg/frame.msg" NAME_WE)
add_dependencies(roller_eye_generate_messages_cpp _roller_eye_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/newt/Desktop/moorebot-scout/ros/scout_melodic_ws/src/roller_eye/srv/nav_mag_calibra.srv" NAME_WE)
add_dependencies(roller_eye_generate_messages_cpp _roller_eye_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/newt/Desktop/moorebot-scout/ros/scout_melodic_ws/src/roller_eye/srv/rtmp_start.srv" NAME_WE)
add_dependencies(roller_eye_generate_messages_cpp _roller_eye_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/newt/Desktop/moorebot-scout/ros/scout_melodic_ws/src/roller_eye/srv/record_stop.srv" NAME_WE)
add_dependencies(roller_eye_generate_messages_cpp _roller_eye_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/newt/Desktop/moorebot-scout/ros/scout_melodic_ws/src/roller_eye/msg/record.msg" NAME_WE)
add_dependencies(roller_eye_generate_messages_cpp _roller_eye_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/newt/Desktop/moorebot-scout/ros/scout_melodic_ws/src/roller_eye/msg/detect.msg" NAME_WE)
add_dependencies(roller_eye_generate_messages_cpp _roller_eye_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/newt/Desktop/moorebot-scout/ros/scout_melodic_ws/src/roller_eye/srv/nav_get_status.srv" NAME_WE)
add_dependencies(roller_eye_generate_messages_cpp _roller_eye_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/newt/Desktop/moorebot-scout/ros/scout_melodic_ws/src/roller_eye/msg/status.msg" NAME_WE)
add_dependencies(roller_eye_generate_messages_cpp _roller_eye_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/newt/Desktop/moorebot-scout/ros/scout_melodic_ws/src/roller_eye/msg/point.msg" NAME_WE)
add_dependencies(roller_eye_generate_messages_cpp _roller_eye_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/newt/Desktop/moorebot-scout/ros/scout_melodic_ws/src/roller_eye/srv/nav_path_save.srv" NAME_WE)
add_dependencies(roller_eye_generate_messages_cpp _roller_eye_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/newt/Desktop/moorebot-scout/ros/scout_melodic_ws/src/roller_eye/srv/wifi_switch_mode.srv" NAME_WE)
add_dependencies(roller_eye_generate_messages_cpp _roller_eye_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/newt/Desktop/moorebot-scout/ros/scout_melodic_ws/src/roller_eye/srv/nav_delete_path.srv" NAME_WE)
add_dependencies(roller_eye_generate_messages_cpp _roller_eye_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/newt/Desktop/moorebot-scout/ros/scout_melodic_ws/src/roller_eye/srv/nav_patrol_stop.srv" NAME_WE)
add_dependencies(roller_eye_generate_messages_cpp _roller_eye_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/newt/Desktop/moorebot-scout/ros/scout_melodic_ws/src/roller_eye/srv/record_get_file_path.srv" NAME_WE)
add_dependencies(roller_eye_generate_messages_cpp _roller_eye_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/newt/Desktop/moorebot-scout/ros/scout_melodic_ws/src/roller_eye/srv/nav_path_start.srv" NAME_WE)
add_dependencies(roller_eye_generate_messages_cpp _roller_eye_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/newt/Desktop/moorebot-scout/ros/scout_melodic_ws/src/roller_eye/srv/sched_add_mod.srv" NAME_WE)
add_dependencies(roller_eye_generate_messages_cpp _roller_eye_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/newt/Desktop/moorebot-scout/ros/scout_melodic_ws/src/roller_eye/msg/alexskill.msg" NAME_WE)
add_dependencies(roller_eye_generate_messages_cpp _roller_eye_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/newt/Desktop/moorebot-scout/ros/scout_melodic_ws/src/roller_eye/srv/wifi_scan_list.srv" NAME_WE)
add_dependencies(roller_eye_generate_messages_cpp _roller_eye_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/newt/Desktop/moorebot-scout/ros/scout_melodic_ws/src/roller_eye/srv/video_set_resolution.srv" NAME_WE)
add_dependencies(roller_eye_generate_messages_cpp _roller_eye_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/newt/Desktop/moorebot-scout/ros/scout_melodic_ws/src/roller_eye/srv/nav_get_patrol_name.srv" NAME_WE)
add_dependencies(roller_eye_generate_messages_cpp _roller_eye_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/newt/Desktop/moorebot-scout/ros/scout_melodic_ws/src/roller_eye/msg/contour.msg" NAME_WE)
add_dependencies(roller_eye_generate_messages_cpp _roller_eye_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(roller_eye_gencpp)
add_dependencies(roller_eye_gencpp roller_eye_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS roller_eye_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(roller_eye
  "/home/newt/Desktop/moorebot-scout/ros/scout_melodic_ws/src/roller_eye/msg/task.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/roller_eye
)
_generate_msg_eus(roller_eye
  "/home/newt/Desktop/moorebot-scout/ros/scout_melodic_ws/src/roller_eye/msg/wifi_config_info.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/roller_eye
)
_generate_msg_eus(roller_eye
  "/home/newt/Desktop/moorebot-scout/ros/scout_melodic_ws/src/roller_eye/msg/record.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/roller_eye
)
_generate_msg_eus(roller_eye
  "/home/newt/Desktop/moorebot-scout/ros/scout_melodic_ws/src/roller_eye/msg/detect.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/roller_eye
)
_generate_msg_eus(roller_eye
  "/home/newt/Desktop/moorebot-scout/ros/scout_melodic_ws/src/roller_eye/msg/point.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/roller_eye
)
_generate_msg_eus(roller_eye
  "/home/newt/Desktop/moorebot-scout/ros/scout_melodic_ws/src/roller_eye/msg/patrol_status.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/roller_eye
)
_generate_msg_eus(roller_eye
  "/home/newt/Desktop/moorebot-scout/ros/scout_melodic_ws/src/roller_eye/msg/status.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/roller_eye
)
_generate_msg_eus(roller_eye
  "/home/newt/Desktop/moorebot-scout/ros/scout_melodic_ws/src/roller_eye/msg/alexskill.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/roller_eye
)
_generate_msg_eus(roller_eye
  "/home/newt/Desktop/moorebot-scout/ros/scout_melodic_ws/src/roller_eye/msg/wifi_info.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/roller_eye
)
_generate_msg_eus(roller_eye
  "/home/newt/Desktop/moorebot-scout/ros/scout_melodic_ws/src/roller_eye/msg/frame.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/roller_eye
)
_generate_msg_eus(roller_eye
  "/home/newt/Desktop/moorebot-scout/ros/scout_melodic_ws/src/roller_eye/msg/contour.msg"
  "${MSG_I_FLAGS}"
  "/home/newt/Desktop/moorebot-scout/ros/scout_melodic_ws/src/roller_eye/msg/point.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/roller_eye
)

### Generating Services
_generate_srv_eus(roller_eye
  "/home/newt/Desktop/moorebot-scout/ros/scout_melodic_ws/src/roller_eye/srv/record_get_files.srv"
  "${MSG_I_FLAGS}"
  "/home/newt/Desktop/moorebot-scout/ros/scout_melodic_ws/src/roller_eye/msg/record.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/roller_eye
)
_generate_srv_eus(roller_eye
  "/home/newt/Desktop/moorebot-scout/ros/scout_melodic_ws/src/roller_eye/srv/record_get_status.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/roller_eye
)
_generate_srv_eus(roller_eye
  "/home/newt/Desktop/moorebot-scout/ros/scout_melodic_ws/src/roller_eye/srv/record_get_file_path.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/roller_eye
)
_generate_srv_eus(roller_eye
  "/home/newt/Desktop/moorebot-scout/ros/scout_melodic_ws/src/roller_eye/srv/record_clean.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/roller_eye
)
_generate_srv_eus(roller_eye
  "/home/newt/Desktop/moorebot-scout/ros/scout_melodic_ws/src/roller_eye/srv/rtmp_stop.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/roller_eye
)
_generate_srv_eus(roller_eye
  "/home/newt/Desktop/moorebot-scout/ros/scout_melodic_ws/src/roller_eye/srv/record_start.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/roller_eye
)
_generate_srv_eus(roller_eye
  "/home/newt/Desktop/moorebot-scout/ros/scout_melodic_ws/src/roller_eye/srv/nav_cancel.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/roller_eye
)
_generate_srv_eus(roller_eye
  "/home/newt/Desktop/moorebot-scout/ros/scout_melodic_ws/src/roller_eye/srv/wifi_switch_ssid_key.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/roller_eye
)
_generate_srv_eus(roller_eye
  "/home/newt/Desktop/moorebot-scout/ros/scout_melodic_ws/src/roller_eye/srv/nav_path_save.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/roller_eye
)
_generate_srv_eus(roller_eye
  "/home/newt/Desktop/moorebot-scout/ros/scout_melodic_ws/src/roller_eye/srv/nav_patrol.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/roller_eye
)
_generate_srv_eus(roller_eye
  "/home/newt/Desktop/moorebot-scout/ros/scout_melodic_ws/src/roller_eye/srv/nav_list_path.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/roller_eye
)
_generate_srv_eus(roller_eye
  "/home/newt/Desktop/moorebot-scout/ros/scout_melodic_ws/src/roller_eye/srv/wifi_switch_mode.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/roller_eye
)
_generate_srv_eus(roller_eye
  "/home/newt/Desktop/moorebot-scout/ros/scout_melodic_ws/src/roller_eye/srv/nav_mag_calibra.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/roller_eye
)
_generate_srv_eus(roller_eye
  "/home/newt/Desktop/moorebot-scout/ros/scout_melodic_ws/src/roller_eye/srv/rtmp_start.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/roller_eye
)
_generate_srv_eus(roller_eye
  "/home/newt/Desktop/moorebot-scout/ros/scout_melodic_ws/src/roller_eye/srv/record_stop.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/roller_eye
)
_generate_srv_eus(roller_eye
  "/home/newt/Desktop/moorebot-scout/ros/scout_melodic_ws/src/roller_eye/srv/nav_get_status.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/roller_eye
)
_generate_srv_eus(roller_eye
  "/home/newt/Desktop/moorebot-scout/ros/scout_melodic_ws/src/roller_eye/srv/record_delete_file.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/roller_eye
)
_generate_srv_eus(roller_eye
  "/home/newt/Desktop/moorebot-scout/ros/scout_melodic_ws/src/roller_eye/srv/nav_delete_path.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/roller_eye
)
_generate_srv_eus(roller_eye
  "/home/newt/Desktop/moorebot-scout/ros/scout_melodic_ws/src/roller_eye/srv/nav_patrol_stop.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/roller_eye
)
_generate_srv_eus(roller_eye
  "/home/newt/Desktop/moorebot-scout/ros/scout_melodic_ws/src/roller_eye/srv/record_get_file_num.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/roller_eye
)
_generate_srv_eus(roller_eye
  "/home/newt/Desktop/moorebot-scout/ros/scout_melodic_ws/src/roller_eye/srv/nav_path_start.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/roller_eye
)
_generate_srv_eus(roller_eye
  "/home/newt/Desktop/moorebot-scout/ros/scout_melodic_ws/src/roller_eye/srv/sched_add_mod.srv"
  "${MSG_I_FLAGS}"
  "/home/newt/Desktop/moorebot-scout/ros/scout_melodic_ws/src/roller_eye/msg/task.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/roller_eye
)
_generate_srv_eus(roller_eye
  "/home/newt/Desktop/moorebot-scout/ros/scout_melodic_ws/src/roller_eye/srv/wifi_scan_list.srv"
  "${MSG_I_FLAGS}"
  "/home/newt/Desktop/moorebot-scout/ros/scout_melodic_ws/src/roller_eye/msg/wifi_info.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/roller_eye
)
_generate_srv_eus(roller_eye
  "/home/newt/Desktop/moorebot-scout/ros/scout_melodic_ws/src/roller_eye/srv/video_set_resolution.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/roller_eye
)
_generate_srv_eus(roller_eye
  "/home/newt/Desktop/moorebot-scout/ros/scout_melodic_ws/src/roller_eye/srv/nav_get_patrol_name.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/roller_eye
)

### Generating Module File
_generate_module_eus(roller_eye
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/roller_eye
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(roller_eye_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(roller_eye_generate_messages roller_eye_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/newt/Desktop/moorebot-scout/ros/scout_melodic_ws/src/roller_eye/srv/record_get_files.srv" NAME_WE)
add_dependencies(roller_eye_generate_messages_eus _roller_eye_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/newt/Desktop/moorebot-scout/ros/scout_melodic_ws/src/roller_eye/msg/task.msg" NAME_WE)
add_dependencies(roller_eye_generate_messages_eus _roller_eye_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/newt/Desktop/moorebot-scout/ros/scout_melodic_ws/src/roller_eye/srv/record_get_status.srv" NAME_WE)
add_dependencies(roller_eye_generate_messages_eus _roller_eye_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/newt/Desktop/moorebot-scout/ros/scout_melodic_ws/src/roller_eye/msg/wifi_config_info.msg" NAME_WE)
add_dependencies(roller_eye_generate_messages_eus _roller_eye_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/newt/Desktop/moorebot-scout/ros/scout_melodic_ws/src/roller_eye/msg/wifi_info.msg" NAME_WE)
add_dependencies(roller_eye_generate_messages_eus _roller_eye_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/newt/Desktop/moorebot-scout/ros/scout_melodic_ws/src/roller_eye/srv/record_get_file_num.srv" NAME_WE)
add_dependencies(roller_eye_generate_messages_eus _roller_eye_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/newt/Desktop/moorebot-scout/ros/scout_melodic_ws/src/roller_eye/srv/record_clean.srv" NAME_WE)
add_dependencies(roller_eye_generate_messages_eus _roller_eye_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/newt/Desktop/moorebot-scout/ros/scout_melodic_ws/src/roller_eye/srv/rtmp_stop.srv" NAME_WE)
add_dependencies(roller_eye_generate_messages_eus _roller_eye_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/newt/Desktop/moorebot-scout/ros/scout_melodic_ws/src/roller_eye/srv/record_start.srv" NAME_WE)
add_dependencies(roller_eye_generate_messages_eus _roller_eye_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/newt/Desktop/moorebot-scout/ros/scout_melodic_ws/src/roller_eye/srv/nav_cancel.srv" NAME_WE)
add_dependencies(roller_eye_generate_messages_eus _roller_eye_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/newt/Desktop/moorebot-scout/ros/scout_melodic_ws/src/roller_eye/srv/wifi_switch_ssid_key.srv" NAME_WE)
add_dependencies(roller_eye_generate_messages_eus _roller_eye_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/newt/Desktop/moorebot-scout/ros/scout_melodic_ws/src/roller_eye/srv/record_delete_file.srv" NAME_WE)
add_dependencies(roller_eye_generate_messages_eus _roller_eye_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/newt/Desktop/moorebot-scout/ros/scout_melodic_ws/src/roller_eye/msg/patrol_status.msg" NAME_WE)
add_dependencies(roller_eye_generate_messages_eus _roller_eye_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/newt/Desktop/moorebot-scout/ros/scout_melodic_ws/src/roller_eye/srv/nav_patrol.srv" NAME_WE)
add_dependencies(roller_eye_generate_messages_eus _roller_eye_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/newt/Desktop/moorebot-scout/ros/scout_melodic_ws/src/roller_eye/srv/nav_list_path.srv" NAME_WE)
add_dependencies(roller_eye_generate_messages_eus _roller_eye_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/newt/Desktop/moorebot-scout/ros/scout_melodic_ws/src/roller_eye/msg/frame.msg" NAME_WE)
add_dependencies(roller_eye_generate_messages_eus _roller_eye_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/newt/Desktop/moorebot-scout/ros/scout_melodic_ws/src/roller_eye/srv/nav_mag_calibra.srv" NAME_WE)
add_dependencies(roller_eye_generate_messages_eus _roller_eye_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/newt/Desktop/moorebot-scout/ros/scout_melodic_ws/src/roller_eye/srv/rtmp_start.srv" NAME_WE)
add_dependencies(roller_eye_generate_messages_eus _roller_eye_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/newt/Desktop/moorebot-scout/ros/scout_melodic_ws/src/roller_eye/srv/record_stop.srv" NAME_WE)
add_dependencies(roller_eye_generate_messages_eus _roller_eye_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/newt/Desktop/moorebot-scout/ros/scout_melodic_ws/src/roller_eye/msg/record.msg" NAME_WE)
add_dependencies(roller_eye_generate_messages_eus _roller_eye_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/newt/Desktop/moorebot-scout/ros/scout_melodic_ws/src/roller_eye/msg/detect.msg" NAME_WE)
add_dependencies(roller_eye_generate_messages_eus _roller_eye_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/newt/Desktop/moorebot-scout/ros/scout_melodic_ws/src/roller_eye/srv/nav_get_status.srv" NAME_WE)
add_dependencies(roller_eye_generate_messages_eus _roller_eye_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/newt/Desktop/moorebot-scout/ros/scout_melodic_ws/src/roller_eye/msg/status.msg" NAME_WE)
add_dependencies(roller_eye_generate_messages_eus _roller_eye_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/newt/Desktop/moorebot-scout/ros/scout_melodic_ws/src/roller_eye/msg/point.msg" NAME_WE)
add_dependencies(roller_eye_generate_messages_eus _roller_eye_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/newt/Desktop/moorebot-scout/ros/scout_melodic_ws/src/roller_eye/srv/nav_path_save.srv" NAME_WE)
add_dependencies(roller_eye_generate_messages_eus _roller_eye_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/newt/Desktop/moorebot-scout/ros/scout_melodic_ws/src/roller_eye/srv/wifi_switch_mode.srv" NAME_WE)
add_dependencies(roller_eye_generate_messages_eus _roller_eye_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/newt/Desktop/moorebot-scout/ros/scout_melodic_ws/src/roller_eye/srv/nav_delete_path.srv" NAME_WE)
add_dependencies(roller_eye_generate_messages_eus _roller_eye_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/newt/Desktop/moorebot-scout/ros/scout_melodic_ws/src/roller_eye/srv/nav_patrol_stop.srv" NAME_WE)
add_dependencies(roller_eye_generate_messages_eus _roller_eye_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/newt/Desktop/moorebot-scout/ros/scout_melodic_ws/src/roller_eye/srv/record_get_file_path.srv" NAME_WE)
add_dependencies(roller_eye_generate_messages_eus _roller_eye_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/newt/Desktop/moorebot-scout/ros/scout_melodic_ws/src/roller_eye/srv/nav_path_start.srv" NAME_WE)
add_dependencies(roller_eye_generate_messages_eus _roller_eye_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/newt/Desktop/moorebot-scout/ros/scout_melodic_ws/src/roller_eye/srv/sched_add_mod.srv" NAME_WE)
add_dependencies(roller_eye_generate_messages_eus _roller_eye_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/newt/Desktop/moorebot-scout/ros/scout_melodic_ws/src/roller_eye/msg/alexskill.msg" NAME_WE)
add_dependencies(roller_eye_generate_messages_eus _roller_eye_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/newt/Desktop/moorebot-scout/ros/scout_melodic_ws/src/roller_eye/srv/wifi_scan_list.srv" NAME_WE)
add_dependencies(roller_eye_generate_messages_eus _roller_eye_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/newt/Desktop/moorebot-scout/ros/scout_melodic_ws/src/roller_eye/srv/video_set_resolution.srv" NAME_WE)
add_dependencies(roller_eye_generate_messages_eus _roller_eye_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/newt/Desktop/moorebot-scout/ros/scout_melodic_ws/src/roller_eye/srv/nav_get_patrol_name.srv" NAME_WE)
add_dependencies(roller_eye_generate_messages_eus _roller_eye_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/newt/Desktop/moorebot-scout/ros/scout_melodic_ws/src/roller_eye/msg/contour.msg" NAME_WE)
add_dependencies(roller_eye_generate_messages_eus _roller_eye_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(roller_eye_geneus)
add_dependencies(roller_eye_geneus roller_eye_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS roller_eye_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(roller_eye
  "/home/newt/Desktop/moorebot-scout/ros/scout_melodic_ws/src/roller_eye/msg/task.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/roller_eye
)
_generate_msg_lisp(roller_eye
  "/home/newt/Desktop/moorebot-scout/ros/scout_melodic_ws/src/roller_eye/msg/wifi_config_info.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/roller_eye
)
_generate_msg_lisp(roller_eye
  "/home/newt/Desktop/moorebot-scout/ros/scout_melodic_ws/src/roller_eye/msg/record.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/roller_eye
)
_generate_msg_lisp(roller_eye
  "/home/newt/Desktop/moorebot-scout/ros/scout_melodic_ws/src/roller_eye/msg/detect.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/roller_eye
)
_generate_msg_lisp(roller_eye
  "/home/newt/Desktop/moorebot-scout/ros/scout_melodic_ws/src/roller_eye/msg/point.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/roller_eye
)
_generate_msg_lisp(roller_eye
  "/home/newt/Desktop/moorebot-scout/ros/scout_melodic_ws/src/roller_eye/msg/patrol_status.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/roller_eye
)
_generate_msg_lisp(roller_eye
  "/home/newt/Desktop/moorebot-scout/ros/scout_melodic_ws/src/roller_eye/msg/status.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/roller_eye
)
_generate_msg_lisp(roller_eye
  "/home/newt/Desktop/moorebot-scout/ros/scout_melodic_ws/src/roller_eye/msg/alexskill.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/roller_eye
)
_generate_msg_lisp(roller_eye
  "/home/newt/Desktop/moorebot-scout/ros/scout_melodic_ws/src/roller_eye/msg/wifi_info.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/roller_eye
)
_generate_msg_lisp(roller_eye
  "/home/newt/Desktop/moorebot-scout/ros/scout_melodic_ws/src/roller_eye/msg/frame.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/roller_eye
)
_generate_msg_lisp(roller_eye
  "/home/newt/Desktop/moorebot-scout/ros/scout_melodic_ws/src/roller_eye/msg/contour.msg"
  "${MSG_I_FLAGS}"
  "/home/newt/Desktop/moorebot-scout/ros/scout_melodic_ws/src/roller_eye/msg/point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/roller_eye
)

### Generating Services
_generate_srv_lisp(roller_eye
  "/home/newt/Desktop/moorebot-scout/ros/scout_melodic_ws/src/roller_eye/srv/record_get_files.srv"
  "${MSG_I_FLAGS}"
  "/home/newt/Desktop/moorebot-scout/ros/scout_melodic_ws/src/roller_eye/msg/record.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/roller_eye
)
_generate_srv_lisp(roller_eye
  "/home/newt/Desktop/moorebot-scout/ros/scout_melodic_ws/src/roller_eye/srv/record_get_status.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/roller_eye
)
_generate_srv_lisp(roller_eye
  "/home/newt/Desktop/moorebot-scout/ros/scout_melodic_ws/src/roller_eye/srv/record_get_file_path.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/roller_eye
)
_generate_srv_lisp(roller_eye
  "/home/newt/Desktop/moorebot-scout/ros/scout_melodic_ws/src/roller_eye/srv/record_clean.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/roller_eye
)
_generate_srv_lisp(roller_eye
  "/home/newt/Desktop/moorebot-scout/ros/scout_melodic_ws/src/roller_eye/srv/rtmp_stop.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/roller_eye
)
_generate_srv_lisp(roller_eye
  "/home/newt/Desktop/moorebot-scout/ros/scout_melodic_ws/src/roller_eye/srv/record_start.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/roller_eye
)
_generate_srv_lisp(roller_eye
  "/home/newt/Desktop/moorebot-scout/ros/scout_melodic_ws/src/roller_eye/srv/nav_cancel.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/roller_eye
)
_generate_srv_lisp(roller_eye
  "/home/newt/Desktop/moorebot-scout/ros/scout_melodic_ws/src/roller_eye/srv/wifi_switch_ssid_key.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/roller_eye
)
_generate_srv_lisp(roller_eye
  "/home/newt/Desktop/moorebot-scout/ros/scout_melodic_ws/src/roller_eye/srv/nav_path_save.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/roller_eye
)
_generate_srv_lisp(roller_eye
  "/home/newt/Desktop/moorebot-scout/ros/scout_melodic_ws/src/roller_eye/srv/nav_patrol.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/roller_eye
)
_generate_srv_lisp(roller_eye
  "/home/newt/Desktop/moorebot-scout/ros/scout_melodic_ws/src/roller_eye/srv/nav_list_path.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/roller_eye
)
_generate_srv_lisp(roller_eye
  "/home/newt/Desktop/moorebot-scout/ros/scout_melodic_ws/src/roller_eye/srv/wifi_switch_mode.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/roller_eye
)
_generate_srv_lisp(roller_eye
  "/home/newt/Desktop/moorebot-scout/ros/scout_melodic_ws/src/roller_eye/srv/nav_mag_calibra.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/roller_eye
)
_generate_srv_lisp(roller_eye
  "/home/newt/Desktop/moorebot-scout/ros/scout_melodic_ws/src/roller_eye/srv/rtmp_start.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/roller_eye
)
_generate_srv_lisp(roller_eye
  "/home/newt/Desktop/moorebot-scout/ros/scout_melodic_ws/src/roller_eye/srv/record_stop.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/roller_eye
)
_generate_srv_lisp(roller_eye
  "/home/newt/Desktop/moorebot-scout/ros/scout_melodic_ws/src/roller_eye/srv/nav_get_status.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/roller_eye
)
_generate_srv_lisp(roller_eye
  "/home/newt/Desktop/moorebot-scout/ros/scout_melodic_ws/src/roller_eye/srv/record_delete_file.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/roller_eye
)
_generate_srv_lisp(roller_eye
  "/home/newt/Desktop/moorebot-scout/ros/scout_melodic_ws/src/roller_eye/srv/nav_delete_path.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/roller_eye
)
_generate_srv_lisp(roller_eye
  "/home/newt/Desktop/moorebot-scout/ros/scout_melodic_ws/src/roller_eye/srv/nav_patrol_stop.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/roller_eye
)
_generate_srv_lisp(roller_eye
  "/home/newt/Desktop/moorebot-scout/ros/scout_melodic_ws/src/roller_eye/srv/record_get_file_num.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/roller_eye
)
_generate_srv_lisp(roller_eye
  "/home/newt/Desktop/moorebot-scout/ros/scout_melodic_ws/src/roller_eye/srv/nav_path_start.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/roller_eye
)
_generate_srv_lisp(roller_eye
  "/home/newt/Desktop/moorebot-scout/ros/scout_melodic_ws/src/roller_eye/srv/sched_add_mod.srv"
  "${MSG_I_FLAGS}"
  "/home/newt/Desktop/moorebot-scout/ros/scout_melodic_ws/src/roller_eye/msg/task.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/roller_eye
)
_generate_srv_lisp(roller_eye
  "/home/newt/Desktop/moorebot-scout/ros/scout_melodic_ws/src/roller_eye/srv/wifi_scan_list.srv"
  "${MSG_I_FLAGS}"
  "/home/newt/Desktop/moorebot-scout/ros/scout_melodic_ws/src/roller_eye/msg/wifi_info.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/roller_eye
)
_generate_srv_lisp(roller_eye
  "/home/newt/Desktop/moorebot-scout/ros/scout_melodic_ws/src/roller_eye/srv/video_set_resolution.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/roller_eye
)
_generate_srv_lisp(roller_eye
  "/home/newt/Desktop/moorebot-scout/ros/scout_melodic_ws/src/roller_eye/srv/nav_get_patrol_name.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/roller_eye
)

### Generating Module File
_generate_module_lisp(roller_eye
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/roller_eye
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(roller_eye_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(roller_eye_generate_messages roller_eye_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/newt/Desktop/moorebot-scout/ros/scout_melodic_ws/src/roller_eye/srv/record_get_files.srv" NAME_WE)
add_dependencies(roller_eye_generate_messages_lisp _roller_eye_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/newt/Desktop/moorebot-scout/ros/scout_melodic_ws/src/roller_eye/msg/task.msg" NAME_WE)
add_dependencies(roller_eye_generate_messages_lisp _roller_eye_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/newt/Desktop/moorebot-scout/ros/scout_melodic_ws/src/roller_eye/srv/record_get_status.srv" NAME_WE)
add_dependencies(roller_eye_generate_messages_lisp _roller_eye_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/newt/Desktop/moorebot-scout/ros/scout_melodic_ws/src/roller_eye/msg/wifi_config_info.msg" NAME_WE)
add_dependencies(roller_eye_generate_messages_lisp _roller_eye_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/newt/Desktop/moorebot-scout/ros/scout_melodic_ws/src/roller_eye/msg/wifi_info.msg" NAME_WE)
add_dependencies(roller_eye_generate_messages_lisp _roller_eye_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/newt/Desktop/moorebot-scout/ros/scout_melodic_ws/src/roller_eye/srv/record_get_file_num.srv" NAME_WE)
add_dependencies(roller_eye_generate_messages_lisp _roller_eye_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/newt/Desktop/moorebot-scout/ros/scout_melodic_ws/src/roller_eye/srv/record_clean.srv" NAME_WE)
add_dependencies(roller_eye_generate_messages_lisp _roller_eye_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/newt/Desktop/moorebot-scout/ros/scout_melodic_ws/src/roller_eye/srv/rtmp_stop.srv" NAME_WE)
add_dependencies(roller_eye_generate_messages_lisp _roller_eye_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/newt/Desktop/moorebot-scout/ros/scout_melodic_ws/src/roller_eye/srv/record_start.srv" NAME_WE)
add_dependencies(roller_eye_generate_messages_lisp _roller_eye_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/newt/Desktop/moorebot-scout/ros/scout_melodic_ws/src/roller_eye/srv/nav_cancel.srv" NAME_WE)
add_dependencies(roller_eye_generate_messages_lisp _roller_eye_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/newt/Desktop/moorebot-scout/ros/scout_melodic_ws/src/roller_eye/srv/wifi_switch_ssid_key.srv" NAME_WE)
add_dependencies(roller_eye_generate_messages_lisp _roller_eye_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/newt/Desktop/moorebot-scout/ros/scout_melodic_ws/src/roller_eye/srv/record_delete_file.srv" NAME_WE)
add_dependencies(roller_eye_generate_messages_lisp _roller_eye_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/newt/Desktop/moorebot-scout/ros/scout_melodic_ws/src/roller_eye/msg/patrol_status.msg" NAME_WE)
add_dependencies(roller_eye_generate_messages_lisp _roller_eye_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/newt/Desktop/moorebot-scout/ros/scout_melodic_ws/src/roller_eye/srv/nav_patrol.srv" NAME_WE)
add_dependencies(roller_eye_generate_messages_lisp _roller_eye_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/newt/Desktop/moorebot-scout/ros/scout_melodic_ws/src/roller_eye/srv/nav_list_path.srv" NAME_WE)
add_dependencies(roller_eye_generate_messages_lisp _roller_eye_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/newt/Desktop/moorebot-scout/ros/scout_melodic_ws/src/roller_eye/msg/frame.msg" NAME_WE)
add_dependencies(roller_eye_generate_messages_lisp _roller_eye_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/newt/Desktop/moorebot-scout/ros/scout_melodic_ws/src/roller_eye/srv/nav_mag_calibra.srv" NAME_WE)
add_dependencies(roller_eye_generate_messages_lisp _roller_eye_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/newt/Desktop/moorebot-scout/ros/scout_melodic_ws/src/roller_eye/srv/rtmp_start.srv" NAME_WE)
add_dependencies(roller_eye_generate_messages_lisp _roller_eye_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/newt/Desktop/moorebot-scout/ros/scout_melodic_ws/src/roller_eye/srv/record_stop.srv" NAME_WE)
add_dependencies(roller_eye_generate_messages_lisp _roller_eye_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/newt/Desktop/moorebot-scout/ros/scout_melodic_ws/src/roller_eye/msg/record.msg" NAME_WE)
add_dependencies(roller_eye_generate_messages_lisp _roller_eye_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/newt/Desktop/moorebot-scout/ros/scout_melodic_ws/src/roller_eye/msg/detect.msg" NAME_WE)
add_dependencies(roller_eye_generate_messages_lisp _roller_eye_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/newt/Desktop/moorebot-scout/ros/scout_melodic_ws/src/roller_eye/srv/nav_get_status.srv" NAME_WE)
add_dependencies(roller_eye_generate_messages_lisp _roller_eye_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/newt/Desktop/moorebot-scout/ros/scout_melodic_ws/src/roller_eye/msg/status.msg" NAME_WE)
add_dependencies(roller_eye_generate_messages_lisp _roller_eye_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/newt/Desktop/moorebot-scout/ros/scout_melodic_ws/src/roller_eye/msg/point.msg" NAME_WE)
add_dependencies(roller_eye_generate_messages_lisp _roller_eye_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/newt/Desktop/moorebot-scout/ros/scout_melodic_ws/src/roller_eye/srv/nav_path_save.srv" NAME_WE)
add_dependencies(roller_eye_generate_messages_lisp _roller_eye_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/newt/Desktop/moorebot-scout/ros/scout_melodic_ws/src/roller_eye/srv/wifi_switch_mode.srv" NAME_WE)
add_dependencies(roller_eye_generate_messages_lisp _roller_eye_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/newt/Desktop/moorebot-scout/ros/scout_melodic_ws/src/roller_eye/srv/nav_delete_path.srv" NAME_WE)
add_dependencies(roller_eye_generate_messages_lisp _roller_eye_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/newt/Desktop/moorebot-scout/ros/scout_melodic_ws/src/roller_eye/srv/nav_patrol_stop.srv" NAME_WE)
add_dependencies(roller_eye_generate_messages_lisp _roller_eye_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/newt/Desktop/moorebot-scout/ros/scout_melodic_ws/src/roller_eye/srv/record_get_file_path.srv" NAME_WE)
add_dependencies(roller_eye_generate_messages_lisp _roller_eye_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/newt/Desktop/moorebot-scout/ros/scout_melodic_ws/src/roller_eye/srv/nav_path_start.srv" NAME_WE)
add_dependencies(roller_eye_generate_messages_lisp _roller_eye_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/newt/Desktop/moorebot-scout/ros/scout_melodic_ws/src/roller_eye/srv/sched_add_mod.srv" NAME_WE)
add_dependencies(roller_eye_generate_messages_lisp _roller_eye_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/newt/Desktop/moorebot-scout/ros/scout_melodic_ws/src/roller_eye/msg/alexskill.msg" NAME_WE)
add_dependencies(roller_eye_generate_messages_lisp _roller_eye_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/newt/Desktop/moorebot-scout/ros/scout_melodic_ws/src/roller_eye/srv/wifi_scan_list.srv" NAME_WE)
add_dependencies(roller_eye_generate_messages_lisp _roller_eye_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/newt/Desktop/moorebot-scout/ros/scout_melodic_ws/src/roller_eye/srv/video_set_resolution.srv" NAME_WE)
add_dependencies(roller_eye_generate_messages_lisp _roller_eye_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/newt/Desktop/moorebot-scout/ros/scout_melodic_ws/src/roller_eye/srv/nav_get_patrol_name.srv" NAME_WE)
add_dependencies(roller_eye_generate_messages_lisp _roller_eye_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/newt/Desktop/moorebot-scout/ros/scout_melodic_ws/src/roller_eye/msg/contour.msg" NAME_WE)
add_dependencies(roller_eye_generate_messages_lisp _roller_eye_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(roller_eye_genlisp)
add_dependencies(roller_eye_genlisp roller_eye_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS roller_eye_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(roller_eye
  "/home/newt/Desktop/moorebot-scout/ros/scout_melodic_ws/src/roller_eye/msg/task.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/roller_eye
)
_generate_msg_nodejs(roller_eye
  "/home/newt/Desktop/moorebot-scout/ros/scout_melodic_ws/src/roller_eye/msg/wifi_config_info.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/roller_eye
)
_generate_msg_nodejs(roller_eye
  "/home/newt/Desktop/moorebot-scout/ros/scout_melodic_ws/src/roller_eye/msg/record.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/roller_eye
)
_generate_msg_nodejs(roller_eye
  "/home/newt/Desktop/moorebot-scout/ros/scout_melodic_ws/src/roller_eye/msg/detect.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/roller_eye
)
_generate_msg_nodejs(roller_eye
  "/home/newt/Desktop/moorebot-scout/ros/scout_melodic_ws/src/roller_eye/msg/point.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/roller_eye
)
_generate_msg_nodejs(roller_eye
  "/home/newt/Desktop/moorebot-scout/ros/scout_melodic_ws/src/roller_eye/msg/patrol_status.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/roller_eye
)
_generate_msg_nodejs(roller_eye
  "/home/newt/Desktop/moorebot-scout/ros/scout_melodic_ws/src/roller_eye/msg/status.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/roller_eye
)
_generate_msg_nodejs(roller_eye
  "/home/newt/Desktop/moorebot-scout/ros/scout_melodic_ws/src/roller_eye/msg/alexskill.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/roller_eye
)
_generate_msg_nodejs(roller_eye
  "/home/newt/Desktop/moorebot-scout/ros/scout_melodic_ws/src/roller_eye/msg/wifi_info.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/roller_eye
)
_generate_msg_nodejs(roller_eye
  "/home/newt/Desktop/moorebot-scout/ros/scout_melodic_ws/src/roller_eye/msg/frame.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/roller_eye
)
_generate_msg_nodejs(roller_eye
  "/home/newt/Desktop/moorebot-scout/ros/scout_melodic_ws/src/roller_eye/msg/contour.msg"
  "${MSG_I_FLAGS}"
  "/home/newt/Desktop/moorebot-scout/ros/scout_melodic_ws/src/roller_eye/msg/point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/roller_eye
)

### Generating Services
_generate_srv_nodejs(roller_eye
  "/home/newt/Desktop/moorebot-scout/ros/scout_melodic_ws/src/roller_eye/srv/record_get_files.srv"
  "${MSG_I_FLAGS}"
  "/home/newt/Desktop/moorebot-scout/ros/scout_melodic_ws/src/roller_eye/msg/record.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/roller_eye
)
_generate_srv_nodejs(roller_eye
  "/home/newt/Desktop/moorebot-scout/ros/scout_melodic_ws/src/roller_eye/srv/record_get_status.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/roller_eye
)
_generate_srv_nodejs(roller_eye
  "/home/newt/Desktop/moorebot-scout/ros/scout_melodic_ws/src/roller_eye/srv/record_get_file_path.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/roller_eye
)
_generate_srv_nodejs(roller_eye
  "/home/newt/Desktop/moorebot-scout/ros/scout_melodic_ws/src/roller_eye/srv/record_clean.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/roller_eye
)
_generate_srv_nodejs(roller_eye
  "/home/newt/Desktop/moorebot-scout/ros/scout_melodic_ws/src/roller_eye/srv/rtmp_stop.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/roller_eye
)
_generate_srv_nodejs(roller_eye
  "/home/newt/Desktop/moorebot-scout/ros/scout_melodic_ws/src/roller_eye/srv/record_start.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/roller_eye
)
_generate_srv_nodejs(roller_eye
  "/home/newt/Desktop/moorebot-scout/ros/scout_melodic_ws/src/roller_eye/srv/nav_cancel.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/roller_eye
)
_generate_srv_nodejs(roller_eye
  "/home/newt/Desktop/moorebot-scout/ros/scout_melodic_ws/src/roller_eye/srv/wifi_switch_ssid_key.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/roller_eye
)
_generate_srv_nodejs(roller_eye
  "/home/newt/Desktop/moorebot-scout/ros/scout_melodic_ws/src/roller_eye/srv/nav_path_save.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/roller_eye
)
_generate_srv_nodejs(roller_eye
  "/home/newt/Desktop/moorebot-scout/ros/scout_melodic_ws/src/roller_eye/srv/nav_patrol.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/roller_eye
)
_generate_srv_nodejs(roller_eye
  "/home/newt/Desktop/moorebot-scout/ros/scout_melodic_ws/src/roller_eye/srv/nav_list_path.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/roller_eye
)
_generate_srv_nodejs(roller_eye
  "/home/newt/Desktop/moorebot-scout/ros/scout_melodic_ws/src/roller_eye/srv/wifi_switch_mode.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/roller_eye
)
_generate_srv_nodejs(roller_eye
  "/home/newt/Desktop/moorebot-scout/ros/scout_melodic_ws/src/roller_eye/srv/nav_mag_calibra.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/roller_eye
)
_generate_srv_nodejs(roller_eye
  "/home/newt/Desktop/moorebot-scout/ros/scout_melodic_ws/src/roller_eye/srv/rtmp_start.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/roller_eye
)
_generate_srv_nodejs(roller_eye
  "/home/newt/Desktop/moorebot-scout/ros/scout_melodic_ws/src/roller_eye/srv/record_stop.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/roller_eye
)
_generate_srv_nodejs(roller_eye
  "/home/newt/Desktop/moorebot-scout/ros/scout_melodic_ws/src/roller_eye/srv/nav_get_status.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/roller_eye
)
_generate_srv_nodejs(roller_eye
  "/home/newt/Desktop/moorebot-scout/ros/scout_melodic_ws/src/roller_eye/srv/record_delete_file.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/roller_eye
)
_generate_srv_nodejs(roller_eye
  "/home/newt/Desktop/moorebot-scout/ros/scout_melodic_ws/src/roller_eye/srv/nav_delete_path.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/roller_eye
)
_generate_srv_nodejs(roller_eye
  "/home/newt/Desktop/moorebot-scout/ros/scout_melodic_ws/src/roller_eye/srv/nav_patrol_stop.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/roller_eye
)
_generate_srv_nodejs(roller_eye
  "/home/newt/Desktop/moorebot-scout/ros/scout_melodic_ws/src/roller_eye/srv/record_get_file_num.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/roller_eye
)
_generate_srv_nodejs(roller_eye
  "/home/newt/Desktop/moorebot-scout/ros/scout_melodic_ws/src/roller_eye/srv/nav_path_start.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/roller_eye
)
_generate_srv_nodejs(roller_eye
  "/home/newt/Desktop/moorebot-scout/ros/scout_melodic_ws/src/roller_eye/srv/sched_add_mod.srv"
  "${MSG_I_FLAGS}"
  "/home/newt/Desktop/moorebot-scout/ros/scout_melodic_ws/src/roller_eye/msg/task.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/roller_eye
)
_generate_srv_nodejs(roller_eye
  "/home/newt/Desktop/moorebot-scout/ros/scout_melodic_ws/src/roller_eye/srv/wifi_scan_list.srv"
  "${MSG_I_FLAGS}"
  "/home/newt/Desktop/moorebot-scout/ros/scout_melodic_ws/src/roller_eye/msg/wifi_info.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/roller_eye
)
_generate_srv_nodejs(roller_eye
  "/home/newt/Desktop/moorebot-scout/ros/scout_melodic_ws/src/roller_eye/srv/video_set_resolution.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/roller_eye
)
_generate_srv_nodejs(roller_eye
  "/home/newt/Desktop/moorebot-scout/ros/scout_melodic_ws/src/roller_eye/srv/nav_get_patrol_name.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/roller_eye
)

### Generating Module File
_generate_module_nodejs(roller_eye
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/roller_eye
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(roller_eye_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(roller_eye_generate_messages roller_eye_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/newt/Desktop/moorebot-scout/ros/scout_melodic_ws/src/roller_eye/srv/record_get_files.srv" NAME_WE)
add_dependencies(roller_eye_generate_messages_nodejs _roller_eye_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/newt/Desktop/moorebot-scout/ros/scout_melodic_ws/src/roller_eye/msg/task.msg" NAME_WE)
add_dependencies(roller_eye_generate_messages_nodejs _roller_eye_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/newt/Desktop/moorebot-scout/ros/scout_melodic_ws/src/roller_eye/srv/record_get_status.srv" NAME_WE)
add_dependencies(roller_eye_generate_messages_nodejs _roller_eye_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/newt/Desktop/moorebot-scout/ros/scout_melodic_ws/src/roller_eye/msg/wifi_config_info.msg" NAME_WE)
add_dependencies(roller_eye_generate_messages_nodejs _roller_eye_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/newt/Desktop/moorebot-scout/ros/scout_melodic_ws/src/roller_eye/msg/wifi_info.msg" NAME_WE)
add_dependencies(roller_eye_generate_messages_nodejs _roller_eye_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/newt/Desktop/moorebot-scout/ros/scout_melodic_ws/src/roller_eye/srv/record_get_file_num.srv" NAME_WE)
add_dependencies(roller_eye_generate_messages_nodejs _roller_eye_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/newt/Desktop/moorebot-scout/ros/scout_melodic_ws/src/roller_eye/srv/record_clean.srv" NAME_WE)
add_dependencies(roller_eye_generate_messages_nodejs _roller_eye_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/newt/Desktop/moorebot-scout/ros/scout_melodic_ws/src/roller_eye/srv/rtmp_stop.srv" NAME_WE)
add_dependencies(roller_eye_generate_messages_nodejs _roller_eye_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/newt/Desktop/moorebot-scout/ros/scout_melodic_ws/src/roller_eye/srv/record_start.srv" NAME_WE)
add_dependencies(roller_eye_generate_messages_nodejs _roller_eye_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/newt/Desktop/moorebot-scout/ros/scout_melodic_ws/src/roller_eye/srv/nav_cancel.srv" NAME_WE)
add_dependencies(roller_eye_generate_messages_nodejs _roller_eye_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/newt/Desktop/moorebot-scout/ros/scout_melodic_ws/src/roller_eye/srv/wifi_switch_ssid_key.srv" NAME_WE)
add_dependencies(roller_eye_generate_messages_nodejs _roller_eye_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/newt/Desktop/moorebot-scout/ros/scout_melodic_ws/src/roller_eye/srv/record_delete_file.srv" NAME_WE)
add_dependencies(roller_eye_generate_messages_nodejs _roller_eye_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/newt/Desktop/moorebot-scout/ros/scout_melodic_ws/src/roller_eye/msg/patrol_status.msg" NAME_WE)
add_dependencies(roller_eye_generate_messages_nodejs _roller_eye_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/newt/Desktop/moorebot-scout/ros/scout_melodic_ws/src/roller_eye/srv/nav_patrol.srv" NAME_WE)
add_dependencies(roller_eye_generate_messages_nodejs _roller_eye_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/newt/Desktop/moorebot-scout/ros/scout_melodic_ws/src/roller_eye/srv/nav_list_path.srv" NAME_WE)
add_dependencies(roller_eye_generate_messages_nodejs _roller_eye_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/newt/Desktop/moorebot-scout/ros/scout_melodic_ws/src/roller_eye/msg/frame.msg" NAME_WE)
add_dependencies(roller_eye_generate_messages_nodejs _roller_eye_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/newt/Desktop/moorebot-scout/ros/scout_melodic_ws/src/roller_eye/srv/nav_mag_calibra.srv" NAME_WE)
add_dependencies(roller_eye_generate_messages_nodejs _roller_eye_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/newt/Desktop/moorebot-scout/ros/scout_melodic_ws/src/roller_eye/srv/rtmp_start.srv" NAME_WE)
add_dependencies(roller_eye_generate_messages_nodejs _roller_eye_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/newt/Desktop/moorebot-scout/ros/scout_melodic_ws/src/roller_eye/srv/record_stop.srv" NAME_WE)
add_dependencies(roller_eye_generate_messages_nodejs _roller_eye_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/newt/Desktop/moorebot-scout/ros/scout_melodic_ws/src/roller_eye/msg/record.msg" NAME_WE)
add_dependencies(roller_eye_generate_messages_nodejs _roller_eye_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/newt/Desktop/moorebot-scout/ros/scout_melodic_ws/src/roller_eye/msg/detect.msg" NAME_WE)
add_dependencies(roller_eye_generate_messages_nodejs _roller_eye_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/newt/Desktop/moorebot-scout/ros/scout_melodic_ws/src/roller_eye/srv/nav_get_status.srv" NAME_WE)
add_dependencies(roller_eye_generate_messages_nodejs _roller_eye_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/newt/Desktop/moorebot-scout/ros/scout_melodic_ws/src/roller_eye/msg/status.msg" NAME_WE)
add_dependencies(roller_eye_generate_messages_nodejs _roller_eye_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/newt/Desktop/moorebot-scout/ros/scout_melodic_ws/src/roller_eye/msg/point.msg" NAME_WE)
add_dependencies(roller_eye_generate_messages_nodejs _roller_eye_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/newt/Desktop/moorebot-scout/ros/scout_melodic_ws/src/roller_eye/srv/nav_path_save.srv" NAME_WE)
add_dependencies(roller_eye_generate_messages_nodejs _roller_eye_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/newt/Desktop/moorebot-scout/ros/scout_melodic_ws/src/roller_eye/srv/wifi_switch_mode.srv" NAME_WE)
add_dependencies(roller_eye_generate_messages_nodejs _roller_eye_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/newt/Desktop/moorebot-scout/ros/scout_melodic_ws/src/roller_eye/srv/nav_delete_path.srv" NAME_WE)
add_dependencies(roller_eye_generate_messages_nodejs _roller_eye_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/newt/Desktop/moorebot-scout/ros/scout_melodic_ws/src/roller_eye/srv/nav_patrol_stop.srv" NAME_WE)
add_dependencies(roller_eye_generate_messages_nodejs _roller_eye_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/newt/Desktop/moorebot-scout/ros/scout_melodic_ws/src/roller_eye/srv/record_get_file_path.srv" NAME_WE)
add_dependencies(roller_eye_generate_messages_nodejs _roller_eye_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/newt/Desktop/moorebot-scout/ros/scout_melodic_ws/src/roller_eye/srv/nav_path_start.srv" NAME_WE)
add_dependencies(roller_eye_generate_messages_nodejs _roller_eye_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/newt/Desktop/moorebot-scout/ros/scout_melodic_ws/src/roller_eye/srv/sched_add_mod.srv" NAME_WE)
add_dependencies(roller_eye_generate_messages_nodejs _roller_eye_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/newt/Desktop/moorebot-scout/ros/scout_melodic_ws/src/roller_eye/msg/alexskill.msg" NAME_WE)
add_dependencies(roller_eye_generate_messages_nodejs _roller_eye_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/newt/Desktop/moorebot-scout/ros/scout_melodic_ws/src/roller_eye/srv/wifi_scan_list.srv" NAME_WE)
add_dependencies(roller_eye_generate_messages_nodejs _roller_eye_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/newt/Desktop/moorebot-scout/ros/scout_melodic_ws/src/roller_eye/srv/video_set_resolution.srv" NAME_WE)
add_dependencies(roller_eye_generate_messages_nodejs _roller_eye_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/newt/Desktop/moorebot-scout/ros/scout_melodic_ws/src/roller_eye/srv/nav_get_patrol_name.srv" NAME_WE)
add_dependencies(roller_eye_generate_messages_nodejs _roller_eye_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/newt/Desktop/moorebot-scout/ros/scout_melodic_ws/src/roller_eye/msg/contour.msg" NAME_WE)
add_dependencies(roller_eye_generate_messages_nodejs _roller_eye_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(roller_eye_gennodejs)
add_dependencies(roller_eye_gennodejs roller_eye_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS roller_eye_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(roller_eye
  "/home/newt/Desktop/moorebot-scout/ros/scout_melodic_ws/src/roller_eye/msg/task.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/roller_eye
)
_generate_msg_py(roller_eye
  "/home/newt/Desktop/moorebot-scout/ros/scout_melodic_ws/src/roller_eye/msg/wifi_config_info.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/roller_eye
)
_generate_msg_py(roller_eye
  "/home/newt/Desktop/moorebot-scout/ros/scout_melodic_ws/src/roller_eye/msg/record.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/roller_eye
)
_generate_msg_py(roller_eye
  "/home/newt/Desktop/moorebot-scout/ros/scout_melodic_ws/src/roller_eye/msg/detect.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/roller_eye
)
_generate_msg_py(roller_eye
  "/home/newt/Desktop/moorebot-scout/ros/scout_melodic_ws/src/roller_eye/msg/point.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/roller_eye
)
_generate_msg_py(roller_eye
  "/home/newt/Desktop/moorebot-scout/ros/scout_melodic_ws/src/roller_eye/msg/patrol_status.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/roller_eye
)
_generate_msg_py(roller_eye
  "/home/newt/Desktop/moorebot-scout/ros/scout_melodic_ws/src/roller_eye/msg/status.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/roller_eye
)
_generate_msg_py(roller_eye
  "/home/newt/Desktop/moorebot-scout/ros/scout_melodic_ws/src/roller_eye/msg/alexskill.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/roller_eye
)
_generate_msg_py(roller_eye
  "/home/newt/Desktop/moorebot-scout/ros/scout_melodic_ws/src/roller_eye/msg/wifi_info.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/roller_eye
)
_generate_msg_py(roller_eye
  "/home/newt/Desktop/moorebot-scout/ros/scout_melodic_ws/src/roller_eye/msg/frame.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/roller_eye
)
_generate_msg_py(roller_eye
  "/home/newt/Desktop/moorebot-scout/ros/scout_melodic_ws/src/roller_eye/msg/contour.msg"
  "${MSG_I_FLAGS}"
  "/home/newt/Desktop/moorebot-scout/ros/scout_melodic_ws/src/roller_eye/msg/point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/roller_eye
)

### Generating Services
_generate_srv_py(roller_eye
  "/home/newt/Desktop/moorebot-scout/ros/scout_melodic_ws/src/roller_eye/srv/record_get_files.srv"
  "${MSG_I_FLAGS}"
  "/home/newt/Desktop/moorebot-scout/ros/scout_melodic_ws/src/roller_eye/msg/record.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/roller_eye
)
_generate_srv_py(roller_eye
  "/home/newt/Desktop/moorebot-scout/ros/scout_melodic_ws/src/roller_eye/srv/record_get_status.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/roller_eye
)
_generate_srv_py(roller_eye
  "/home/newt/Desktop/moorebot-scout/ros/scout_melodic_ws/src/roller_eye/srv/record_get_file_path.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/roller_eye
)
_generate_srv_py(roller_eye
  "/home/newt/Desktop/moorebot-scout/ros/scout_melodic_ws/src/roller_eye/srv/record_clean.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/roller_eye
)
_generate_srv_py(roller_eye
  "/home/newt/Desktop/moorebot-scout/ros/scout_melodic_ws/src/roller_eye/srv/rtmp_stop.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/roller_eye
)
_generate_srv_py(roller_eye
  "/home/newt/Desktop/moorebot-scout/ros/scout_melodic_ws/src/roller_eye/srv/record_start.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/roller_eye
)
_generate_srv_py(roller_eye
  "/home/newt/Desktop/moorebot-scout/ros/scout_melodic_ws/src/roller_eye/srv/nav_cancel.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/roller_eye
)
_generate_srv_py(roller_eye
  "/home/newt/Desktop/moorebot-scout/ros/scout_melodic_ws/src/roller_eye/srv/wifi_switch_ssid_key.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/roller_eye
)
_generate_srv_py(roller_eye
  "/home/newt/Desktop/moorebot-scout/ros/scout_melodic_ws/src/roller_eye/srv/nav_path_save.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/roller_eye
)
_generate_srv_py(roller_eye
  "/home/newt/Desktop/moorebot-scout/ros/scout_melodic_ws/src/roller_eye/srv/nav_patrol.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/roller_eye
)
_generate_srv_py(roller_eye
  "/home/newt/Desktop/moorebot-scout/ros/scout_melodic_ws/src/roller_eye/srv/nav_list_path.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/roller_eye
)
_generate_srv_py(roller_eye
  "/home/newt/Desktop/moorebot-scout/ros/scout_melodic_ws/src/roller_eye/srv/wifi_switch_mode.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/roller_eye
)
_generate_srv_py(roller_eye
  "/home/newt/Desktop/moorebot-scout/ros/scout_melodic_ws/src/roller_eye/srv/nav_mag_calibra.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/roller_eye
)
_generate_srv_py(roller_eye
  "/home/newt/Desktop/moorebot-scout/ros/scout_melodic_ws/src/roller_eye/srv/rtmp_start.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/roller_eye
)
_generate_srv_py(roller_eye
  "/home/newt/Desktop/moorebot-scout/ros/scout_melodic_ws/src/roller_eye/srv/record_stop.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/roller_eye
)
_generate_srv_py(roller_eye
  "/home/newt/Desktop/moorebot-scout/ros/scout_melodic_ws/src/roller_eye/srv/nav_get_status.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/roller_eye
)
_generate_srv_py(roller_eye
  "/home/newt/Desktop/moorebot-scout/ros/scout_melodic_ws/src/roller_eye/srv/record_delete_file.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/roller_eye
)
_generate_srv_py(roller_eye
  "/home/newt/Desktop/moorebot-scout/ros/scout_melodic_ws/src/roller_eye/srv/nav_delete_path.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/roller_eye
)
_generate_srv_py(roller_eye
  "/home/newt/Desktop/moorebot-scout/ros/scout_melodic_ws/src/roller_eye/srv/nav_patrol_stop.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/roller_eye
)
_generate_srv_py(roller_eye
  "/home/newt/Desktop/moorebot-scout/ros/scout_melodic_ws/src/roller_eye/srv/record_get_file_num.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/roller_eye
)
_generate_srv_py(roller_eye
  "/home/newt/Desktop/moorebot-scout/ros/scout_melodic_ws/src/roller_eye/srv/nav_path_start.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/roller_eye
)
_generate_srv_py(roller_eye
  "/home/newt/Desktop/moorebot-scout/ros/scout_melodic_ws/src/roller_eye/srv/sched_add_mod.srv"
  "${MSG_I_FLAGS}"
  "/home/newt/Desktop/moorebot-scout/ros/scout_melodic_ws/src/roller_eye/msg/task.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/roller_eye
)
_generate_srv_py(roller_eye
  "/home/newt/Desktop/moorebot-scout/ros/scout_melodic_ws/src/roller_eye/srv/wifi_scan_list.srv"
  "${MSG_I_FLAGS}"
  "/home/newt/Desktop/moorebot-scout/ros/scout_melodic_ws/src/roller_eye/msg/wifi_info.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/roller_eye
)
_generate_srv_py(roller_eye
  "/home/newt/Desktop/moorebot-scout/ros/scout_melodic_ws/src/roller_eye/srv/video_set_resolution.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/roller_eye
)
_generate_srv_py(roller_eye
  "/home/newt/Desktop/moorebot-scout/ros/scout_melodic_ws/src/roller_eye/srv/nav_get_patrol_name.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/roller_eye
)

### Generating Module File
_generate_module_py(roller_eye
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/roller_eye
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(roller_eye_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(roller_eye_generate_messages roller_eye_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/newt/Desktop/moorebot-scout/ros/scout_melodic_ws/src/roller_eye/srv/record_get_files.srv" NAME_WE)
add_dependencies(roller_eye_generate_messages_py _roller_eye_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/newt/Desktop/moorebot-scout/ros/scout_melodic_ws/src/roller_eye/msg/task.msg" NAME_WE)
add_dependencies(roller_eye_generate_messages_py _roller_eye_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/newt/Desktop/moorebot-scout/ros/scout_melodic_ws/src/roller_eye/srv/record_get_status.srv" NAME_WE)
add_dependencies(roller_eye_generate_messages_py _roller_eye_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/newt/Desktop/moorebot-scout/ros/scout_melodic_ws/src/roller_eye/msg/wifi_config_info.msg" NAME_WE)
add_dependencies(roller_eye_generate_messages_py _roller_eye_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/newt/Desktop/moorebot-scout/ros/scout_melodic_ws/src/roller_eye/msg/wifi_info.msg" NAME_WE)
add_dependencies(roller_eye_generate_messages_py _roller_eye_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/newt/Desktop/moorebot-scout/ros/scout_melodic_ws/src/roller_eye/srv/record_get_file_num.srv" NAME_WE)
add_dependencies(roller_eye_generate_messages_py _roller_eye_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/newt/Desktop/moorebot-scout/ros/scout_melodic_ws/src/roller_eye/srv/record_clean.srv" NAME_WE)
add_dependencies(roller_eye_generate_messages_py _roller_eye_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/newt/Desktop/moorebot-scout/ros/scout_melodic_ws/src/roller_eye/srv/rtmp_stop.srv" NAME_WE)
add_dependencies(roller_eye_generate_messages_py _roller_eye_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/newt/Desktop/moorebot-scout/ros/scout_melodic_ws/src/roller_eye/srv/record_start.srv" NAME_WE)
add_dependencies(roller_eye_generate_messages_py _roller_eye_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/newt/Desktop/moorebot-scout/ros/scout_melodic_ws/src/roller_eye/srv/nav_cancel.srv" NAME_WE)
add_dependencies(roller_eye_generate_messages_py _roller_eye_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/newt/Desktop/moorebot-scout/ros/scout_melodic_ws/src/roller_eye/srv/wifi_switch_ssid_key.srv" NAME_WE)
add_dependencies(roller_eye_generate_messages_py _roller_eye_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/newt/Desktop/moorebot-scout/ros/scout_melodic_ws/src/roller_eye/srv/record_delete_file.srv" NAME_WE)
add_dependencies(roller_eye_generate_messages_py _roller_eye_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/newt/Desktop/moorebot-scout/ros/scout_melodic_ws/src/roller_eye/msg/patrol_status.msg" NAME_WE)
add_dependencies(roller_eye_generate_messages_py _roller_eye_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/newt/Desktop/moorebot-scout/ros/scout_melodic_ws/src/roller_eye/srv/nav_patrol.srv" NAME_WE)
add_dependencies(roller_eye_generate_messages_py _roller_eye_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/newt/Desktop/moorebot-scout/ros/scout_melodic_ws/src/roller_eye/srv/nav_list_path.srv" NAME_WE)
add_dependencies(roller_eye_generate_messages_py _roller_eye_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/newt/Desktop/moorebot-scout/ros/scout_melodic_ws/src/roller_eye/msg/frame.msg" NAME_WE)
add_dependencies(roller_eye_generate_messages_py _roller_eye_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/newt/Desktop/moorebot-scout/ros/scout_melodic_ws/src/roller_eye/srv/nav_mag_calibra.srv" NAME_WE)
add_dependencies(roller_eye_generate_messages_py _roller_eye_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/newt/Desktop/moorebot-scout/ros/scout_melodic_ws/src/roller_eye/srv/rtmp_start.srv" NAME_WE)
add_dependencies(roller_eye_generate_messages_py _roller_eye_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/newt/Desktop/moorebot-scout/ros/scout_melodic_ws/src/roller_eye/srv/record_stop.srv" NAME_WE)
add_dependencies(roller_eye_generate_messages_py _roller_eye_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/newt/Desktop/moorebot-scout/ros/scout_melodic_ws/src/roller_eye/msg/record.msg" NAME_WE)
add_dependencies(roller_eye_generate_messages_py _roller_eye_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/newt/Desktop/moorebot-scout/ros/scout_melodic_ws/src/roller_eye/msg/detect.msg" NAME_WE)
add_dependencies(roller_eye_generate_messages_py _roller_eye_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/newt/Desktop/moorebot-scout/ros/scout_melodic_ws/src/roller_eye/srv/nav_get_status.srv" NAME_WE)
add_dependencies(roller_eye_generate_messages_py _roller_eye_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/newt/Desktop/moorebot-scout/ros/scout_melodic_ws/src/roller_eye/msg/status.msg" NAME_WE)
add_dependencies(roller_eye_generate_messages_py _roller_eye_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/newt/Desktop/moorebot-scout/ros/scout_melodic_ws/src/roller_eye/msg/point.msg" NAME_WE)
add_dependencies(roller_eye_generate_messages_py _roller_eye_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/newt/Desktop/moorebot-scout/ros/scout_melodic_ws/src/roller_eye/srv/nav_path_save.srv" NAME_WE)
add_dependencies(roller_eye_generate_messages_py _roller_eye_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/newt/Desktop/moorebot-scout/ros/scout_melodic_ws/src/roller_eye/srv/wifi_switch_mode.srv" NAME_WE)
add_dependencies(roller_eye_generate_messages_py _roller_eye_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/newt/Desktop/moorebot-scout/ros/scout_melodic_ws/src/roller_eye/srv/nav_delete_path.srv" NAME_WE)
add_dependencies(roller_eye_generate_messages_py _roller_eye_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/newt/Desktop/moorebot-scout/ros/scout_melodic_ws/src/roller_eye/srv/nav_patrol_stop.srv" NAME_WE)
add_dependencies(roller_eye_generate_messages_py _roller_eye_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/newt/Desktop/moorebot-scout/ros/scout_melodic_ws/src/roller_eye/srv/record_get_file_path.srv" NAME_WE)
add_dependencies(roller_eye_generate_messages_py _roller_eye_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/newt/Desktop/moorebot-scout/ros/scout_melodic_ws/src/roller_eye/srv/nav_path_start.srv" NAME_WE)
add_dependencies(roller_eye_generate_messages_py _roller_eye_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/newt/Desktop/moorebot-scout/ros/scout_melodic_ws/src/roller_eye/srv/sched_add_mod.srv" NAME_WE)
add_dependencies(roller_eye_generate_messages_py _roller_eye_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/newt/Desktop/moorebot-scout/ros/scout_melodic_ws/src/roller_eye/msg/alexskill.msg" NAME_WE)
add_dependencies(roller_eye_generate_messages_py _roller_eye_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/newt/Desktop/moorebot-scout/ros/scout_melodic_ws/src/roller_eye/srv/wifi_scan_list.srv" NAME_WE)
add_dependencies(roller_eye_generate_messages_py _roller_eye_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/newt/Desktop/moorebot-scout/ros/scout_melodic_ws/src/roller_eye/srv/video_set_resolution.srv" NAME_WE)
add_dependencies(roller_eye_generate_messages_py _roller_eye_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/newt/Desktop/moorebot-scout/ros/scout_melodic_ws/src/roller_eye/srv/nav_get_patrol_name.srv" NAME_WE)
add_dependencies(roller_eye_generate_messages_py _roller_eye_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/newt/Desktop/moorebot-scout/ros/scout_melodic_ws/src/roller_eye/msg/contour.msg" NAME_WE)
add_dependencies(roller_eye_generate_messages_py _roller_eye_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(roller_eye_genpy)
add_dependencies(roller_eye_genpy roller_eye_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS roller_eye_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/roller_eye)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/roller_eye
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(roller_eye_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/roller_eye)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/roller_eye
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(roller_eye_generate_messages_eus std_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/roller_eye)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/roller_eye
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(roller_eye_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/roller_eye)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/roller_eye
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(roller_eye_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/roller_eye)
  install(CODE "execute_process(COMMAND \"/usr/bin/python2\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/roller_eye\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/roller_eye
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(roller_eye_generate_messages_py std_msgs_generate_messages_py)
endif()
