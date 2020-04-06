import Flutter
import UIKit

public class SwiftFlutterTencentLbsPlugin: NSObject, FlutterPlugin {
  public static func register(with registrar: FlutterPluginRegistrar) {
    let channel = FlutterMethodChannel(name: "flutter_tencent_lbs_plugin", binaryMessenger: registrar.messenger())
    let instance = SwiftFlutterTencentLbsPlugin()
    registrar.addMethodCallDelegate(instance, channel: channel)
  }

  public func handle(_ call: FlutterMethodCall, result: @escaping FlutterResult) {
    result("iOS " + UIDevice.current.systemVersion)
  }
}
