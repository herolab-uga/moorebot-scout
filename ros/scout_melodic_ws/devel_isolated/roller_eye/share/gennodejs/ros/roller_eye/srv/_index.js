
"use strict";

let nav_delete_path = require('./nav_delete_path.js')
let record_start = require('./record_start.js')
let upgrader_cmd_send = require('./upgrader_cmd_send.js')
let nav_trace_done = require('./nav_trace_done.js')
let rtmp_start = require('./rtmp_start.js')
let adjust_exposure_time = require('./adjust_exposure_time.js')
let nav_get_patrol_name = require('./nav_get_patrol_name.js')
let stop_detect = require('./stop_detect.js')
let algo_action = require('./algo_action.js')
let vio_start = require('./vio_start.js')
let sched_list = require('./sched_list.js')
let nav_cancel = require('./nav_cancel.js')
let programming_stop = require('./programming_stop.js')
let nav_get_status = require('./nav_get_status.js')
let wifi_scan_list = require('./wifi_scan_list.js')
let wifi_switch_mode = require('./wifi_switch_mode.js')
let video_set_resolution = require('./video_set_resolution.js')
let ai_get_detect_setting = require('./ai_get_detect_setting.js')
let programming_meta_handle = require('./programming_meta_handle.js')
let record_stop = require('./record_stop.js')
let ai_set_detect_setting = require('./ai_set_detect_setting.js')
let led_all_on = require('./led_all_on.js')
let saveTmpPicForStartPath = require('./saveTmpPicForStartPath.js')
let record_clean = require('./record_clean.js')
let night_get = require('./night_get.js')
let nav_waypoint_add = require('./nav_waypoint_add.js')
let nav_mag_calibra = require('./nav_mag_calibra.js')
let imu_calib = require('./imu_calib.js')
let programming_exception_handle = require('./programming_exception_handle.js')
let record_get_file_num = require('./record_get_file_num.js')
let algo_roll = require('./algo_roll.js')
let nav_patrol_stop = require('./nav_patrol_stop.js')
let record_get_status = require('./record_get_status.js')
let wifi_get_mode = require('./wifi_get_mode.js')
let nav_calibration_get_status = require('./nav_calibration_get_status.js')
let motion_detect_enable = require('./motion_detect_enable.js')
let programming_msg_handle = require('./programming_msg_handle.js')
let adjust_light = require('./adjust_light.js')
let getimu_patrolcalib_status = require('./getimu_patrolcalib_status.js')
let algo_move = require('./algo_move.js')
let nav_low_bat = require('./nav_low_bat.js')
let nav_list_path = require('./nav_list_path.js')
let cloud_cmd_send = require('./cloud_cmd_send.js')
let record_get_file_path = require('./record_get_file_path.js')
let motion_set_zone = require('./motion_set_zone.js')
let nav_waypoint_query = require('./nav_waypoint_query.js')
let enable_vio = require('./enable_vio.js')
let wifi_switch_ssid_key = require('./wifi_switch_ssid_key.js')
let getDiffAngleWhenPatrol = require('./getDiffAngleWhenPatrol.js')
let system_event = require('./system_event.js')
let get_bist_result = require('./get_bist_result.js')
let adjust_ligth copy = require('./adjust_ligth copy.js')
let vio_stop = require('./vio_stop.js')
let wifi_add_ssid_key = require('./wifi_add_ssid_key.js')
let rtmp_stop = require('./rtmp_stop.js')
let getOdom = require('./getOdom.js')
let nav_exit = require('./nav_exit.js')
let nav_path_save = require('./nav_path_save.js')
let record_delete_file = require('./record_delete_file.js')
let adjust_ligth = require('./adjust_ligth.js')
let detect_record_get_status = require('./detect_record_get_status.js')
let wifi_config_ssid_result = require('./wifi_config_ssid_result.js')
let sched_delete = require('./sched_delete.js')
let record_get_files = require('./record_get_files.js')
let nav_patrol = require('./nav_patrol.js')
let sys_get_userid = require('./sys_get_userid.js')
let sched_add_mod = require('./sched_add_mod.js')
let nav_path_start = require('./nav_path_start.js')
let start_bist = require('./start_bist.js')
let upgrader_status_get = require('./upgrader_status_get.js')
let imu_patrol_calib = require('./imu_patrol_calib.js')

module.exports = {
  nav_delete_path: nav_delete_path,
  record_start: record_start,
  upgrader_cmd_send: upgrader_cmd_send,
  nav_trace_done: nav_trace_done,
  rtmp_start: rtmp_start,
  adjust_exposure_time: adjust_exposure_time,
  nav_get_patrol_name: nav_get_patrol_name,
  stop_detect: stop_detect,
  algo_action: algo_action,
  vio_start: vio_start,
  sched_list: sched_list,
  nav_cancel: nav_cancel,
  programming_stop: programming_stop,
  nav_get_status: nav_get_status,
  wifi_scan_list: wifi_scan_list,
  wifi_switch_mode: wifi_switch_mode,
  video_set_resolution: video_set_resolution,
  ai_get_detect_setting: ai_get_detect_setting,
  programming_meta_handle: programming_meta_handle,
  record_stop: record_stop,
  ai_set_detect_setting: ai_set_detect_setting,
  led_all_on: led_all_on,
  saveTmpPicForStartPath: saveTmpPicForStartPath,
  record_clean: record_clean,
  night_get: night_get,
  nav_waypoint_add: nav_waypoint_add,
  nav_mag_calibra: nav_mag_calibra,
  imu_calib: imu_calib,
  programming_exception_handle: programming_exception_handle,
  record_get_file_num: record_get_file_num,
  algo_roll: algo_roll,
  nav_patrol_stop: nav_patrol_stop,
  record_get_status: record_get_status,
  wifi_get_mode: wifi_get_mode,
  nav_calibration_get_status: nav_calibration_get_status,
  motion_detect_enable: motion_detect_enable,
  programming_msg_handle: programming_msg_handle,
  adjust_light: adjust_light,
  getimu_patrolcalib_status: getimu_patrolcalib_status,
  algo_move: algo_move,
  nav_low_bat: nav_low_bat,
  nav_list_path: nav_list_path,
  cloud_cmd_send: cloud_cmd_send,
  record_get_file_path: record_get_file_path,
  motion_set_zone: motion_set_zone,
  nav_waypoint_query: nav_waypoint_query,
  enable_vio: enable_vio,
  wifi_switch_ssid_key: wifi_switch_ssid_key,
  getDiffAngleWhenPatrol: getDiffAngleWhenPatrol,
  system_event: system_event,
  get_bist_result: get_bist_result,
  adjust_ligth copy: adjust_ligth copy,
  vio_stop: vio_stop,
  wifi_add_ssid_key: wifi_add_ssid_key,
  rtmp_stop: rtmp_stop,
  getOdom: getOdom,
  nav_exit: nav_exit,
  nav_path_save: nav_path_save,
  record_delete_file: record_delete_file,
  adjust_ligth: adjust_ligth,
  detect_record_get_status: detect_record_get_status,
  wifi_config_ssid_result: wifi_config_ssid_result,
  sched_delete: sched_delete,
  record_get_files: record_get_files,
  nav_patrol: nav_patrol,
  sys_get_userid: sys_get_userid,
  sched_add_mod: sched_add_mod,
  nav_path_start: nav_path_start,
  start_bist: start_bist,
  upgrader_status_get: upgrader_status_get,
  imu_patrol_calib: imu_patrol_calib,
};
