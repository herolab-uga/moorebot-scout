# Install script for directory: /home/newt/Desktop/moorebot-scout/ros/scout_melodic_ws/src/roller_eye

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/home/newt/Desktop/moorebot-scout/ros/scout_melodic_ws/install")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Install shared libraries without execute permission?
if(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  set(CMAKE_INSTALL_SO_NO_EXE "1")
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/roller_eye/msg" TYPE FILE FILES
    "/home/newt/Desktop/moorebot-scout/ros/scout_melodic_ws/src/roller_eye/msg/frame.msg"
    "/home/newt/Desktop/moorebot-scout/ros/scout_melodic_ws/src/roller_eye/msg/status.msg"
    "/home/newt/Desktop/moorebot-scout/ros/scout_melodic_ws/src/roller_eye/msg/record.msg"
    "/home/newt/Desktop/moorebot-scout/ros/scout_melodic_ws/src/roller_eye/msg/detect.msg"
    "/home/newt/Desktop/moorebot-scout/ros/scout_melodic_ws/src/roller_eye/msg/task.msg"
    "/home/newt/Desktop/moorebot-scout/ros/scout_melodic_ws/src/roller_eye/msg/wifi_info.msg"
    "/home/newt/Desktop/moorebot-scout/ros/scout_melodic_ws/src/roller_eye/msg/wifi_config_info.msg"
    "/home/newt/Desktop/moorebot-scout/ros/scout_melodic_ws/src/roller_eye/msg/point.msg"
    "/home/newt/Desktop/moorebot-scout/ros/scout_melodic_ws/src/roller_eye/msg/contour.msg"
    "/home/newt/Desktop/moorebot-scout/ros/scout_melodic_ws/src/roller_eye/msg/alexskill.msg"
    "/home/newt/Desktop/moorebot-scout/ros/scout_melodic_ws/src/roller_eye/msg/patrol_status.msg"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/roller_eye/srv" TYPE FILE FILES
    "/home/newt/Desktop/moorebot-scout/ros/scout_melodic_ws/src/roller_eye/srv/record_delete_file.srv"
    "/home/newt/Desktop/moorebot-scout/ros/scout_melodic_ws/src/roller_eye/srv/record_get_file_num.srv"
    "/home/newt/Desktop/moorebot-scout/ros/scout_melodic_ws/src/roller_eye/srv/record_get_files.srv"
    "/home/newt/Desktop/moorebot-scout/ros/scout_melodic_ws/src/roller_eye/srv/record_start.srv"
    "/home/newt/Desktop/moorebot-scout/ros/scout_melodic_ws/src/roller_eye/srv/record_stop.srv"
    "/home/newt/Desktop/moorebot-scout/ros/scout_melodic_ws/src/roller_eye/srv/record_get_file_path.srv"
    "/home/newt/Desktop/moorebot-scout/ros/scout_melodic_ws/src/roller_eye/srv/record_get_status.srv"
    "/home/newt/Desktop/moorebot-scout/ros/scout_melodic_ws/src/roller_eye/srv/record_clean.srv"
    "/home/newt/Desktop/moorebot-scout/ros/scout_melodic_ws/src/roller_eye/srv/video_set_resolution.srv"
    "/home/newt/Desktop/moorebot-scout/ros/scout_melodic_ws/src/roller_eye/srv/wifi_switch_ssid_key.srv"
    "/home/newt/Desktop/moorebot-scout/ros/scout_melodic_ws/src/roller_eye/srv/wifi_switch_mode.srv"
    "/home/newt/Desktop/moorebot-scout/ros/scout_melodic_ws/src/roller_eye/srv/wifi_scan_list.srv"
    "/home/newt/Desktop/moorebot-scout/ros/scout_melodic_ws/src/roller_eye/srv/rtmp_start.srv"
    "/home/newt/Desktop/moorebot-scout/ros/scout_melodic_ws/src/roller_eye/srv/rtmp_stop.srv"
    "/home/newt/Desktop/moorebot-scout/ros/scout_melodic_ws/src/roller_eye/srv/nav_path_save.srv"
    "/home/newt/Desktop/moorebot-scout/ros/scout_melodic_ws/src/roller_eye/srv/nav_path_start.srv"
    "/home/newt/Desktop/moorebot-scout/ros/scout_melodic_ws/src/roller_eye/srv/nav_patrol.srv"
    "/home/newt/Desktop/moorebot-scout/ros/scout_melodic_ws/src/roller_eye/srv/nav_cancel.srv"
    "/home/newt/Desktop/moorebot-scout/ros/scout_melodic_ws/src/roller_eye/srv/nav_patrol_stop.srv"
    "/home/newt/Desktop/moorebot-scout/ros/scout_melodic_ws/src/roller_eye/srv/nav_list_path.srv"
    "/home/newt/Desktop/moorebot-scout/ros/scout_melodic_ws/src/roller_eye/srv/nav_delete_path.srv"
    "/home/newt/Desktop/moorebot-scout/ros/scout_melodic_ws/src/roller_eye/srv/nav_mag_calibra.srv"
    "/home/newt/Desktop/moorebot-scout/ros/scout_melodic_ws/src/roller_eye/srv/nav_get_patrol_name.srv"
    "/home/newt/Desktop/moorebot-scout/ros/scout_melodic_ws/src/roller_eye/srv/nav_get_status.srv"
    "/home/newt/Desktop/moorebot-scout/ros/scout_melodic_ws/src/roller_eye/srv/sched_add_mod.srv"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/roller_eye/cmake" TYPE FILE FILES "/home/newt/Desktop/moorebot-scout/ros/scout_melodic_ws/build/roller_eye/catkin_generated/installspace/roller_eye-msg-paths.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE DIRECTORY FILES "/home/newt/Desktop/moorebot-scout/ros/scout_melodic_ws/devel/include/roller_eye")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/roseus/ros" TYPE DIRECTORY FILES "/home/newt/Desktop/moorebot-scout/ros/scout_melodic_ws/devel/share/roseus/ros/roller_eye")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/common-lisp/ros" TYPE DIRECTORY FILES "/home/newt/Desktop/moorebot-scout/ros/scout_melodic_ws/devel/share/common-lisp/ros/roller_eye")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/gennodejs/ros" TYPE DIRECTORY FILES "/home/newt/Desktop/moorebot-scout/ros/scout_melodic_ws/devel/share/gennodejs/ros/roller_eye")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  execute_process(COMMAND "/usr/bin/python2" -m compileall "/home/newt/Desktop/moorebot-scout/ros/scout_melodic_ws/devel/lib/python2.7/dist-packages/roller_eye")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python2.7/dist-packages" TYPE DIRECTORY FILES "/home/newt/Desktop/moorebot-scout/ros/scout_melodic_ws/devel/lib/python2.7/dist-packages/roller_eye")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/roller_eye" TYPE FILE FILES "/home/newt/Desktop/moorebot-scout/ros/scout_melodic_ws/devel/include/roller_eye/ProjectConfig.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/roller_eye" TYPE FILE FILES "/home/newt/Desktop/moorebot-scout/ros/scout_melodic_ws/devel/include/roller_eye/ImageConfig.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python2.7/dist-packages/roller_eye" TYPE FILE FILES "/home/newt/Desktop/moorebot-scout/ros/scout_melodic_ws/devel/lib/python2.7/dist-packages/roller_eye/__init__.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  execute_process(COMMAND "/usr/bin/python2" -m compileall "/home/newt/Desktop/moorebot-scout/ros/scout_melodic_ws/devel/lib/python2.7/dist-packages/roller_eye/cfg")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python2.7/dist-packages/roller_eye" TYPE DIRECTORY FILES "/home/newt/Desktop/moorebot-scout/ros/scout_melodic_ws/devel/lib/python2.7/dist-packages/roller_eye/cfg")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/newt/Desktop/moorebot-scout/ros/scout_melodic_ws/build/roller_eye/catkin_generated/installspace/roller_eye.pc")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/roller_eye/cmake" TYPE FILE FILES "/home/newt/Desktop/moorebot-scout/ros/scout_melodic_ws/build/roller_eye/catkin_generated/installspace/roller_eye-msg-extras.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/roller_eye/cmake" TYPE FILE FILES
    "/home/newt/Desktop/moorebot-scout/ros/scout_melodic_ws/build/roller_eye/catkin_generated/installspace/roller_eyeConfig.cmake"
    "/home/newt/Desktop/moorebot-scout/ros/scout_melodic_ws/build/roller_eye/catkin_generated/installspace/roller_eyeConfig-version.cmake"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/roller_eye" TYPE FILE FILES "/home/newt/Desktop/moorebot-scout/ros/scout_melodic_ws/src/roller_eye/package.xml")
endif()

