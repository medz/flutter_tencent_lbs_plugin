import 'dart:async';

import 'package:flutter/services.dart';

const String _channelName = 'com.bytegem.flutter_plugin.flutter_tencent_lbs_plugin';

class FlutterTencentLbsPlugin {
  static const MethodChannel _channel =
      const MethodChannel(_channelName);

  static Future<String> get platformVersion async {
    final String version = await _channel.invokeMethod('getPlatformVersion');
    return version;
  }

  static Future<void> setApiKey(String key) async {
    await _channel.invokeMethod('set-api-key', key);
  }

  static Future requestLocation() async {
    return await _channel.invokeMethod('request-location');
  }
}
