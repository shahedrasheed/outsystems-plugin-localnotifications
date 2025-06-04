var exec = require('cordova/exec');

exports.setLocalNotification = function (arg0, success, error) {
    exec(success, error, 'LocalNotifications', 'setLocalNotification', [arg0]);
};
