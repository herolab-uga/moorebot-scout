(cl:defpackage roller_eye-srv
  (:use )
  (:export
   "ADJUST_EXPOSURE_TIME"
   "<ADJUST_EXPOSURE_TIME-REQUEST>"
   "ADJUST_EXPOSURE_TIME-REQUEST"
   "<ADJUST_EXPOSURE_TIME-RESPONSE>"
   "ADJUST_EXPOSURE_TIME-RESPONSE"
   "ADJUST_LIGHT"
   "<ADJUST_LIGHT-REQUEST>"
   "ADJUST_LIGHT-REQUEST"
   "<ADJUST_LIGHT-RESPONSE>"
   "ADJUST_LIGHT-RESPONSE"
   "ADJUST_LIGTH"
   "<ADJUST_LIGTH-REQUEST>"
   "ADJUST_LIGTH-REQUEST"
   "<ADJUST_LIGTH-RESPONSE>"
   "ADJUST_LIGTH-RESPONSE"
   "ADJUST_LIGTH COPY"
   "<ADJUST_LIGTH COPY-REQUEST>"
   "ADJUST_LIGTH COPY-REQUEST"
   "<ADJUST_LIGTH COPY-RESPONSE>"
   "ADJUST_LIGTH COPY-RESPONSE"
   "AI_GET_DETECT_SETTING"
   "<AI_GET_DETECT_SETTING-REQUEST>"
   "AI_GET_DETECT_SETTING-REQUEST"
   "<AI_GET_DETECT_SETTING-RESPONSE>"
   "AI_GET_DETECT_SETTING-RESPONSE"
   "AI_SET_DETECT_SETTING"
   "<AI_SET_DETECT_SETTING-REQUEST>"
   "AI_SET_DETECT_SETTING-REQUEST"
   "<AI_SET_DETECT_SETTING-RESPONSE>"
   "AI_SET_DETECT_SETTING-RESPONSE"
   "ALGO_ACTION"
   "<ALGO_ACTION-REQUEST>"
   "ALGO_ACTION-REQUEST"
   "<ALGO_ACTION-RESPONSE>"
   "ALGO_ACTION-RESPONSE"
   "ALGO_MOVE"
   "<ALGO_MOVE-REQUEST>"
   "ALGO_MOVE-REQUEST"
   "<ALGO_MOVE-RESPONSE>"
   "ALGO_MOVE-RESPONSE"
   "ALGO_ROLL"
   "<ALGO_ROLL-REQUEST>"
   "ALGO_ROLL-REQUEST"
   "<ALGO_ROLL-RESPONSE>"
   "ALGO_ROLL-RESPONSE"
   "CLOUD_CMD_SEND"
   "<CLOUD_CMD_SEND-REQUEST>"
   "CLOUD_CMD_SEND-REQUEST"
   "<CLOUD_CMD_SEND-RESPONSE>"
   "CLOUD_CMD_SEND-RESPONSE"
   "DETECT_RECORD_GET_STATUS"
   "<DETECT_RECORD_GET_STATUS-REQUEST>"
   "DETECT_RECORD_GET_STATUS-REQUEST"
   "<DETECT_RECORD_GET_STATUS-RESPONSE>"
   "DETECT_RECORD_GET_STATUS-RESPONSE"
   "ENABLE_VIO"
   "<ENABLE_VIO-REQUEST>"
   "ENABLE_VIO-REQUEST"
   "<ENABLE_VIO-RESPONSE>"
   "ENABLE_VIO-RESPONSE"
   "GETDIFFANGLEWHENPATROL"
   "<GETDIFFANGLEWHENPATROL-REQUEST>"
   "GETDIFFANGLEWHENPATROL-REQUEST"
   "<GETDIFFANGLEWHENPATROL-RESPONSE>"
   "GETDIFFANGLEWHENPATROL-RESPONSE"
   "GETODOM"
   "<GETODOM-REQUEST>"
   "GETODOM-REQUEST"
   "<GETODOM-RESPONSE>"
   "GETODOM-RESPONSE"
   "GET_BIST_RESULT"
   "<GET_BIST_RESULT-REQUEST>"
   "GET_BIST_RESULT-REQUEST"
   "<GET_BIST_RESULT-RESPONSE>"
   "GET_BIST_RESULT-RESPONSE"
   "GETIMU_PATROLCALIB_STATUS"
   "<GETIMU_PATROLCALIB_STATUS-REQUEST>"
   "GETIMU_PATROLCALIB_STATUS-REQUEST"
   "<GETIMU_PATROLCALIB_STATUS-RESPONSE>"
   "GETIMU_PATROLCALIB_STATUS-RESPONSE"
   "IMU_CALIB"
   "<IMU_CALIB-REQUEST>"
   "IMU_CALIB-REQUEST"
   "<IMU_CALIB-RESPONSE>"
   "IMU_CALIB-RESPONSE"
   "IMU_PATROL_CALIB"
   "<IMU_PATROL_CALIB-REQUEST>"
   "IMU_PATROL_CALIB-REQUEST"
   "<IMU_PATROL_CALIB-RESPONSE>"
   "IMU_PATROL_CALIB-RESPONSE"
   "LED_ALL_ON"
   "<LED_ALL_ON-REQUEST>"
   "LED_ALL_ON-REQUEST"
   "<LED_ALL_ON-RESPONSE>"
   "LED_ALL_ON-RESPONSE"
   "MOTION_DETECT_ENABLE"
   "<MOTION_DETECT_ENABLE-REQUEST>"
   "MOTION_DETECT_ENABLE-REQUEST"
   "<MOTION_DETECT_ENABLE-RESPONSE>"
   "MOTION_DETECT_ENABLE-RESPONSE"
   "MOTION_SET_ZONE"
   "<MOTION_SET_ZONE-REQUEST>"
   "MOTION_SET_ZONE-REQUEST"
   "<MOTION_SET_ZONE-RESPONSE>"
   "MOTION_SET_ZONE-RESPONSE"
   "NAV_CALIBRATION_GET_STATUS"
   "<NAV_CALIBRATION_GET_STATUS-REQUEST>"
   "NAV_CALIBRATION_GET_STATUS-REQUEST"
   "<NAV_CALIBRATION_GET_STATUS-RESPONSE>"
   "NAV_CALIBRATION_GET_STATUS-RESPONSE"
   "NAV_CANCEL"
   "<NAV_CANCEL-REQUEST>"
   "NAV_CANCEL-REQUEST"
   "<NAV_CANCEL-RESPONSE>"
   "NAV_CANCEL-RESPONSE"
   "NAV_DELETE_PATH"
   "<NAV_DELETE_PATH-REQUEST>"
   "NAV_DELETE_PATH-REQUEST"
   "<NAV_DELETE_PATH-RESPONSE>"
   "NAV_DELETE_PATH-RESPONSE"
   "NAV_EXIT"
   "<NAV_EXIT-REQUEST>"
   "NAV_EXIT-REQUEST"
   "<NAV_EXIT-RESPONSE>"
   "NAV_EXIT-RESPONSE"
   "NAV_GET_PATROL_NAME"
   "<NAV_GET_PATROL_NAME-REQUEST>"
   "NAV_GET_PATROL_NAME-REQUEST"
   "<NAV_GET_PATROL_NAME-RESPONSE>"
   "NAV_GET_PATROL_NAME-RESPONSE"
   "NAV_GET_STATUS"
   "<NAV_GET_STATUS-REQUEST>"
   "NAV_GET_STATUS-REQUEST"
   "<NAV_GET_STATUS-RESPONSE>"
   "NAV_GET_STATUS-RESPONSE"
   "NAV_LIST_PATH"
   "<NAV_LIST_PATH-REQUEST>"
   "NAV_LIST_PATH-REQUEST"
   "<NAV_LIST_PATH-RESPONSE>"
   "NAV_LIST_PATH-RESPONSE"
   "NAV_LOW_BAT"
   "<NAV_LOW_BAT-REQUEST>"
   "NAV_LOW_BAT-REQUEST"
   "<NAV_LOW_BAT-RESPONSE>"
   "NAV_LOW_BAT-RESPONSE"
   "NAV_MAG_CALIBRA"
   "<NAV_MAG_CALIBRA-REQUEST>"
   "NAV_MAG_CALIBRA-REQUEST"
   "<NAV_MAG_CALIBRA-RESPONSE>"
   "NAV_MAG_CALIBRA-RESPONSE"
   "NAV_PATH_SAVE"
   "<NAV_PATH_SAVE-REQUEST>"
   "NAV_PATH_SAVE-REQUEST"
   "<NAV_PATH_SAVE-RESPONSE>"
   "NAV_PATH_SAVE-RESPONSE"
   "NAV_PATH_START"
   "<NAV_PATH_START-REQUEST>"
   "NAV_PATH_START-REQUEST"
   "<NAV_PATH_START-RESPONSE>"
   "NAV_PATH_START-RESPONSE"
   "NAV_PATROL"
   "<NAV_PATROL-REQUEST>"
   "NAV_PATROL-REQUEST"
   "<NAV_PATROL-RESPONSE>"
   "NAV_PATROL-RESPONSE"
   "NAV_PATROL_STOP"
   "<NAV_PATROL_STOP-REQUEST>"
   "NAV_PATROL_STOP-REQUEST"
   "<NAV_PATROL_STOP-RESPONSE>"
   "NAV_PATROL_STOP-RESPONSE"
   "NAV_TRACE_DONE"
   "<NAV_TRACE_DONE-REQUEST>"
   "NAV_TRACE_DONE-REQUEST"
   "<NAV_TRACE_DONE-RESPONSE>"
   "NAV_TRACE_DONE-RESPONSE"
   "NAV_WAYPOINT_ADD"
   "<NAV_WAYPOINT_ADD-REQUEST>"
   "NAV_WAYPOINT_ADD-REQUEST"
   "<NAV_WAYPOINT_ADD-RESPONSE>"
   "NAV_WAYPOINT_ADD-RESPONSE"
   "NAV_WAYPOINT_QUERY"
   "<NAV_WAYPOINT_QUERY-REQUEST>"
   "NAV_WAYPOINT_QUERY-REQUEST"
   "<NAV_WAYPOINT_QUERY-RESPONSE>"
   "NAV_WAYPOINT_QUERY-RESPONSE"
   "NIGHT_GET"
   "<NIGHT_GET-REQUEST>"
   "NIGHT_GET-REQUEST"
   "<NIGHT_GET-RESPONSE>"
   "NIGHT_GET-RESPONSE"
   "PROGRAMMING_EXCEPTION_HANDLE"
   "<PROGRAMMING_EXCEPTION_HANDLE-REQUEST>"
   "PROGRAMMING_EXCEPTION_HANDLE-REQUEST"
   "<PROGRAMMING_EXCEPTION_HANDLE-RESPONSE>"
   "PROGRAMMING_EXCEPTION_HANDLE-RESPONSE"
   "PROGRAMMING_META_HANDLE"
   "<PROGRAMMING_META_HANDLE-REQUEST>"
   "PROGRAMMING_META_HANDLE-REQUEST"
   "<PROGRAMMING_META_HANDLE-RESPONSE>"
   "PROGRAMMING_META_HANDLE-RESPONSE"
   "PROGRAMMING_MSG_HANDLE"
   "<PROGRAMMING_MSG_HANDLE-REQUEST>"
   "PROGRAMMING_MSG_HANDLE-REQUEST"
   "<PROGRAMMING_MSG_HANDLE-RESPONSE>"
   "PROGRAMMING_MSG_HANDLE-RESPONSE"
   "PROGRAMMING_STOP"
   "<PROGRAMMING_STOP-REQUEST>"
   "PROGRAMMING_STOP-REQUEST"
   "<PROGRAMMING_STOP-RESPONSE>"
   "PROGRAMMING_STOP-RESPONSE"
   "RECORD_CLEAN"
   "<RECORD_CLEAN-REQUEST>"
   "RECORD_CLEAN-REQUEST"
   "<RECORD_CLEAN-RESPONSE>"
   "RECORD_CLEAN-RESPONSE"
   "RECORD_DELETE_FILE"
   "<RECORD_DELETE_FILE-REQUEST>"
   "RECORD_DELETE_FILE-REQUEST"
   "<RECORD_DELETE_FILE-RESPONSE>"
   "RECORD_DELETE_FILE-RESPONSE"
   "RECORD_GET_FILE_NUM"
   "<RECORD_GET_FILE_NUM-REQUEST>"
   "RECORD_GET_FILE_NUM-REQUEST"
   "<RECORD_GET_FILE_NUM-RESPONSE>"
   "RECORD_GET_FILE_NUM-RESPONSE"
   "RECORD_GET_FILE_PATH"
   "<RECORD_GET_FILE_PATH-REQUEST>"
   "RECORD_GET_FILE_PATH-REQUEST"
   "<RECORD_GET_FILE_PATH-RESPONSE>"
   "RECORD_GET_FILE_PATH-RESPONSE"
   "RECORD_GET_FILES"
   "<RECORD_GET_FILES-REQUEST>"
   "RECORD_GET_FILES-REQUEST"
   "<RECORD_GET_FILES-RESPONSE>"
   "RECORD_GET_FILES-RESPONSE"
   "RECORD_GET_STATUS"
   "<RECORD_GET_STATUS-REQUEST>"
   "RECORD_GET_STATUS-REQUEST"
   "<RECORD_GET_STATUS-RESPONSE>"
   "RECORD_GET_STATUS-RESPONSE"
   "RECORD_START"
   "<RECORD_START-REQUEST>"
   "RECORD_START-REQUEST"
   "<RECORD_START-RESPONSE>"
   "RECORD_START-RESPONSE"
   "RECORD_STOP"
   "<RECORD_STOP-REQUEST>"
   "RECORD_STOP-REQUEST"
   "<RECORD_STOP-RESPONSE>"
   "RECORD_STOP-RESPONSE"
   "RTMP_START"
   "<RTMP_START-REQUEST>"
   "RTMP_START-REQUEST"
   "<RTMP_START-RESPONSE>"
   "RTMP_START-RESPONSE"
   "RTMP_STOP"
   "<RTMP_STOP-REQUEST>"
   "RTMP_STOP-REQUEST"
   "<RTMP_STOP-RESPONSE>"
   "RTMP_STOP-RESPONSE"
   "SAVETMPPICFORSTARTPATH"
   "<SAVETMPPICFORSTARTPATH-REQUEST>"
   "SAVETMPPICFORSTARTPATH-REQUEST"
   "<SAVETMPPICFORSTARTPATH-RESPONSE>"
   "SAVETMPPICFORSTARTPATH-RESPONSE"
   "SCHED_ADD_MOD"
   "<SCHED_ADD_MOD-REQUEST>"
   "SCHED_ADD_MOD-REQUEST"
   "<SCHED_ADD_MOD-RESPONSE>"
   "SCHED_ADD_MOD-RESPONSE"
   "SCHED_DELETE"
   "<SCHED_DELETE-REQUEST>"
   "SCHED_DELETE-REQUEST"
   "<SCHED_DELETE-RESPONSE>"
   "SCHED_DELETE-RESPONSE"
   "SCHED_LIST"
   "<SCHED_LIST-REQUEST>"
   "SCHED_LIST-REQUEST"
   "<SCHED_LIST-RESPONSE>"
   "SCHED_LIST-RESPONSE"
   "START_BIST"
   "<START_BIST-REQUEST>"
   "START_BIST-REQUEST"
   "<START_BIST-RESPONSE>"
   "START_BIST-RESPONSE"
   "STOP_DETECT"
   "<STOP_DETECT-REQUEST>"
   "STOP_DETECT-REQUEST"
   "<STOP_DETECT-RESPONSE>"
   "STOP_DETECT-RESPONSE"
   "SYS_GET_USERID"
   "<SYS_GET_USERID-REQUEST>"
   "SYS_GET_USERID-REQUEST"
   "<SYS_GET_USERID-RESPONSE>"
   "SYS_GET_USERID-RESPONSE"
   "SYSTEM_EVENT"
   "<SYSTEM_EVENT-REQUEST>"
   "SYSTEM_EVENT-REQUEST"
   "<SYSTEM_EVENT-RESPONSE>"
   "SYSTEM_EVENT-RESPONSE"
   "UPGRADER_CMD_SEND"
   "<UPGRADER_CMD_SEND-REQUEST>"
   "UPGRADER_CMD_SEND-REQUEST"
   "<UPGRADER_CMD_SEND-RESPONSE>"
   "UPGRADER_CMD_SEND-RESPONSE"
   "UPGRADER_STATUS_GET"
   "<UPGRADER_STATUS_GET-REQUEST>"
   "UPGRADER_STATUS_GET-REQUEST"
   "<UPGRADER_STATUS_GET-RESPONSE>"
   "UPGRADER_STATUS_GET-RESPONSE"
   "VIDEO_SET_RESOLUTION"
   "<VIDEO_SET_RESOLUTION-REQUEST>"
   "VIDEO_SET_RESOLUTION-REQUEST"
   "<VIDEO_SET_RESOLUTION-RESPONSE>"
   "VIDEO_SET_RESOLUTION-RESPONSE"
   "VIO_START"
   "<VIO_START-REQUEST>"
   "VIO_START-REQUEST"
   "<VIO_START-RESPONSE>"
   "VIO_START-RESPONSE"
   "VIO_STOP"
   "<VIO_STOP-REQUEST>"
   "VIO_STOP-REQUEST"
   "<VIO_STOP-RESPONSE>"
   "VIO_STOP-RESPONSE"
   "WIFI_ADD_SSID_KEY"
   "<WIFI_ADD_SSID_KEY-REQUEST>"
   "WIFI_ADD_SSID_KEY-REQUEST"
   "<WIFI_ADD_SSID_KEY-RESPONSE>"
   "WIFI_ADD_SSID_KEY-RESPONSE"
   "WIFI_CONFIG_SSID_RESULT"
   "<WIFI_CONFIG_SSID_RESULT-REQUEST>"
   "WIFI_CONFIG_SSID_RESULT-REQUEST"
   "<WIFI_CONFIG_SSID_RESULT-RESPONSE>"
   "WIFI_CONFIG_SSID_RESULT-RESPONSE"
   "WIFI_GET_MODE"
   "<WIFI_GET_MODE-REQUEST>"
   "WIFI_GET_MODE-REQUEST"
   "<WIFI_GET_MODE-RESPONSE>"
   "WIFI_GET_MODE-RESPONSE"
   "WIFI_SCAN_LIST"
   "<WIFI_SCAN_LIST-REQUEST>"
   "WIFI_SCAN_LIST-REQUEST"
   "<WIFI_SCAN_LIST-RESPONSE>"
   "WIFI_SCAN_LIST-RESPONSE"
   "WIFI_SWITCH_MODE"
   "<WIFI_SWITCH_MODE-REQUEST>"
   "WIFI_SWITCH_MODE-REQUEST"
   "<WIFI_SWITCH_MODE-RESPONSE>"
   "WIFI_SWITCH_MODE-RESPONSE"
   "WIFI_SWITCH_SSID_KEY"
   "<WIFI_SWITCH_SSID_KEY-REQUEST>"
   "WIFI_SWITCH_SSID_KEY-REQUEST"
   "<WIFI_SWITCH_SSID_KEY-RESPONSE>"
   "WIFI_SWITCH_SSID_KEY-RESPONSE"
  ))
