
"use strict";

let detect = require('./detect.js');
let frame = require('./frame.js');
let task = require('./task.js');
let record = require('./record.js');
let point = require('./point.js');
let wifi_config_info = require('./wifi_config_info.js');
let wifi_info = require('./wifi_info.js');
let status = require('./status.js');
let contour = require('./contour.js');
let alexskill = require('./alexskill.js');
let patrol_status = require('./patrol_status.js');

module.exports = {
  detect: detect,
  frame: frame,
  task: task,
  record: record,
  point: point,
  wifi_config_info: wifi_config_info,
  wifi_info: wifi_info,
  status: status,
  contour: contour,
  alexskill: alexskill,
  patrol_status: patrol_status,
};
