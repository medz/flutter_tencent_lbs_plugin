import Flutter
import UIKit
import TencentLBS

public class SwiftFlutterTencentLbsPlugin: NSObject, FlutterPlugin {
  public static func register(with registrar: FlutterPluginRegistrar) {
    let channel = FlutterMethodChannel(name: channelName, binaryMessenger: registrar.messenger())
    let instance = SwiftFlutterTencentLbsPlugin()
    registrar.addMethodCallDelegate(instance, channel: channel)
  }
  
  var locationManager: TencentLBSLocationManager;
  
  public override init() {
    self.locationManager = TencentLBSLocationManager.init();
    self.locationManager.pausesLocationUpdatesAutomatically = false
  }
  
  public func handle(_ call: FlutterMethodCall, result: @escaping FlutterResult) {
    switch call.method {
    case "set-api-key":
      self.locationManager.apiKey = call.arguments as! String
    case "request-location":
      NSLog("request location start")
      self.locationManager.requestAlwaysAuthorization()
    default:
      result("iOS" + UIDevice.current.systemVersion)
    }
  }
}
