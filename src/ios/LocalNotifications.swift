/********* outsystems-plugin-localnotifications.m Cordova Plugin Implementation *******/
import Foundation

@objc(LocalNotifications)
class LocalNotifications: CDVPlugin {
    
    @objc(setLocalNotification:)
    func setLocalNotification(command: CDVInvokedUrlCommand) {
        print("Cool method called")
        
        sendPluginResult(status: .ok, message: "Everything went ok", callbackId: command.callbackId)
    }
    
	//Generic function to be included in all plugins
    func sendPluginResult(status: CDVCommandStatus, message: String = "", callbackId: String, keepCallback: Bool = false) {
        let pluginResult = CDVPluginResult(status: status, messageAs: message)
        pluginResult?.setKeepCallbackAs(keepCallback)
        self.commandDelegate!.send(pluginResult, callbackId: callbackId)
    }
}