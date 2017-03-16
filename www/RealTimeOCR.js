var exec = require('cordova/exec')

var RealTimeOCR = {
    showVC: function () {
        exec(null, null, "RealTimeOCR", "showCameraViewController", []);
    }
};
module.exports = RealTimeOCR;
