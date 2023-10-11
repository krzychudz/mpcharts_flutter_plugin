import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mp_charts_flutter_platform_interface/mp_charts_flutter_platform_interface_method_channel.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  MethodChannelMpChartsFlutterPlatformInterface platform = MethodChannelMpChartsFlutterPlatformInterface();
  const MethodChannel channel = MethodChannel('mp_charts_flutter_platform_interface');

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
