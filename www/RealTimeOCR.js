var exec = require('cordova/exec')

exports.showCameraViewController = function() {
  exec(null, null, "RealTimeOCR", "showCameraViewController", []);
};
