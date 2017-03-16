var exec = require('cordova/exec')

exports.showVC = function() {
  exec(null, null, "RealTimeOCR", "showCameraViewController", []);
};
