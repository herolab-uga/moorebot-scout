# Install script for directory: /home/newt/Desktop/moorebot-scout/ros/scout_melodic_ws/src/roller_eye

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/home/newt/Desktop/moorebot-scout/ros/scout_melodic_ws/install_isolated")
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
  
      if (NOT EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}")
        file(MAKE_DIRECTORY "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}")
      endif()
      if (NOT EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/.catkin")
        file(WRITE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/.catkin" "")
      endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/newt/Desktop/moorebot-scout/ros/scout_melodic_ws/install_isolated/_setup_util.py")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/home/newt/Desktop/moorebot-scout/ros/scout_melodic_ws/install_isolated" TYPE PROGRAM FILES "/home/newt/Desktop/moorebot-scout/ros/scout_melodic_ws/build_isolated/roller_eye/catkin_generated/installspace/_setup_util.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/newt/Desktop/moorebot-scout/ros/scout_melodic_ws/install_isolated/env.sh")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/home/newt/Desktop/moorebot-scout/ros/scout_melodic_ws/install_isolated" TYPE PROGRAM FILES "/home/newt/Desktop/moorebot-scout/ros/scout_melodic_ws/build_isolated/roller_eye/catkin_generated/installspace/env.sh")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/newt/Desktop/moorebot-scout/ros/scout_melodic_ws/install_isolated/setup.bash;/home/newt/Desktop/moorebot-scout/ros/scout_melodic_ws/install_isolated/local_setup.bash")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/home/newt/Desktop/moorebot-scout/ros/scout_melodic_ws/install_isolated" TYPE FILE FILES
    "/home/newt/Desktop/moorebot-scout/ros/scout_melodic_ws/build_isolated/roller_eye/catkin_generated/installspace/setup.bash"
    "/home/newt/Desktop/moorebot-scout/ros/scout_melodic_ws/build_isolated/roller_eye/catkin_generated/installspace/local_setup.bash"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/newt/Desktop/moorebot-scout/ros/scout_melodic_ws/install_isolated/setup.sh;/home/newt/Desktop/moorebot-scout/ros/scout_melodic_ws/install_isolated/local_setup.sh")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/home/newt/Desktop/moorebot-scout/ros/scout_melodic_ws/install_isolated" TYPE FILE FILES
    "/home/newt/Desktop/moorebot-scout/ros/scout_melodic_ws/build_isolated/roller_eye/catkin_generated/installspace/setup.sh"
    "/home/newt/Desktop/moorebot-scout/ros/scout_melodic_ws/build_isolated/roller_eye/catkin_generated/installspace/local_setup.sh"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/newt/Desktop/moorebot-scout/ros/scout_melodic_ws/install_isolated/setup.zsh;/home/newt/Desktop/moorebot-scout/ros/scout_melodic_ws/install_isolated/local_setup.zsh")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/home/newt/Desktop/moorebot-scout/ros/scout_melodic_ws/install_isolated" TYPE FILE FILES
    "/home/newt/Desktop/moorebot-scout/ros/scout_melodic_ws/build_isolated/roller_eye/catkin_generated/installspace/setup.zsh"
    "/home/newt/Desktop/moorebot-scout/ros/scout_melodic_ws/build_isolated/roller_eye/catkin_generated/installspace/local_setup.zsh"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/newt/Desktop/moorebot-scout/ros/scout_melodic_ws/install_isolated/.rosinstall")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/home/newt/Desktop/moorebot-scout/ros/scout_melodic_ws/install_isolated" TYPE FILE FILES "/home/newt/Desktop/moorebot-scout/ros/scout_melodic_ws/build_isolated/roller_eye/catkin_generated/installspace/.rosinstall")
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
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/roller_eye/cmake" TYPE FILE FILES "/home/newt/Desktop/moorebot-scout/ros/scout_melodic_ws/build_isolated/roller_eye/catkin_generated/installspace/roller_eye-msg-paths.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE DIRECTORY FILES "/home/newt/Desktop/moorebot-scout/ros/scout_melodic_ws/devel_isolated/roller_eye/include/roller_eye")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/roseus/ros" TYPE DIRECTORY FILES "/home/newt/Desktop/moorebot-scout/ros/scout_melodic_ws/devel_isolated/roller_eye/share/roseus/ros/roller_eye")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/common-lisp/ros" TYPE DIRECTORY FILES "/home/newt/Desktop/moorebot-scout/ros/scout_melodic_ws/devel_isolated/roller_eye/share/common-lisp/ros/roller_eye")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/gennodejs/ros" TYPE DIRECTORY FILES "/home/newt/Desktop/moorebot-scout/ros/scout_melodic_ws/devel_isolated/roller_eye/share/gennodejs/ros/roller_eye")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  execute_process(COMMAND "/usr/bin/python2" -m compileall "/home/newt/Desktop/moorebot-scout/ros/scout_melodic_ws/devel_isolated/roller_eye/lib/python2.7/dist-packages/roller_eye")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python2.7/dist-packages" TYPE DIRECTORY FILES "/home/newt/Desktop/moorebot-scout/ros/scout_melodic_ws/devel_isolated/roller_eye/lib/python2.7/dist-packages/roller_eye")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/newt/Desktop/moorebot-scout/ros/scout_melodic_ws/build_isolated/roller_eye/catkin_generated/installspace/roller_eye.pc")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/roller_eye/cmake" TYPE FILE FILES "/home/newt/Desktop/moorebot-scout/ros/scout_melodic_ws/build_isolated/roller_eye/catkin_generated/installspace/roller_eye-msg-extras.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/roller_eye/cmake" TYPE FILE FILES
    "/home/newt/Desktop/moorebot-scout/ros/scout_melodic_ws/build_isolated/roller_eye/catkin_generated/installspace/roller_eyeConfig.cmake"
    "/home/newt/Desktop/moorebot-scout/ros/scout_melodic_ws/build_isolated/roller_eye/catkin_generated/installspace/roller_eyeConfig-version.cmake"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/roller_eye" TYPE FILE FILES "/home/newt/Desktop/moorebot-scout/ros/scout_melodic_ws/src/roller_eye/package.xml")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for each subdirectory.
  include("/home/newt/Desktop/moorebot-scout/ros/scout_melodic_ws/build_isolated/roller_eye/gtest/cmake_install.cmake")

endif()

if(CMAKE_INSTALL_COMPONENT)
  set(CMAKE_INSTALL_MANIFEST "install_manifest_${CMAKE_INSTALL_COMPONENT}.txt")
else()
  set(CMAKE_INSTALL_MANIFEST "install_manifest.txt")
endif()

string(REPLACE ";" "\n" CMAKE_INSTALL_MANIFEST_CONTENT
       "${CMAKE_INSTALL_MANIFEST_FILES}")
file(WRITE "/home/newt/Desktop/moorebot-scout/ros/scout_melodic_ws/build_isolated/roller_eye/${CMAKE_INSTALL_MANIFEST}"
     "${CMAKE_INSTALL_MANIFEST_CONTENT}")
