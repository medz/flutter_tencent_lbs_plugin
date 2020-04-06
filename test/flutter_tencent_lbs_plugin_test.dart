import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_tencent_lbs_plugin/flutter_tencent_lbs_plugin.dart';

void main() {
  const MethodChannel channel = MethodChannel('flutter_tencent_lbs_plugin');

  TestWidgetsFlutterBinding.ensureInitialized();

  setUp(() {
    channel.setMockMethodCallHandler((MethodCall methodCall) async {
      return '42';
    });
  });

  tearDown(() {
    channel.setMockMethodCallHandler(null);
  });

  test('getPlatformVersion', () async {
    expect(await FlutterTencentLbsPlugin.platformVersion, '42');
  });
}
