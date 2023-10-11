import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mp_charts_flutter_android/mp_charts_flutter_android_method_channel.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  MethodChannelMpChartsFlutterAndroid platform = MethodChannelMpChartsFlutterAndroid();
  const MethodChannel channel = MethodChannel('mp_charts_flutter_android');

  setUp(() {
    TestDefaultBinaryMessengerBinding.instance.defaultBinaryMessenger.setMockMethodCallHandler(
      channel,
      (MethodCall methodCall) async {
        return '42';
      },
    );
  });

  tearDown(() {
    TestDefaultBinaryMessengerBinding.instance.defaultBinaryMessenger.setMockMethodCallHandler(channel, null);
  });

  test('getPlatformVersion', () async {
    expect(await platform.getPlatformVersion(), '42');
  });
}
