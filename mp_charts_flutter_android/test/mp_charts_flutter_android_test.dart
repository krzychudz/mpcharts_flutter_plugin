import 'package:flutter_test/flutter_test.dart';
import 'package:mp_charts_flutter_android/mp_charts_flutter_android.dart';
import 'package:mp_charts_flutter_android/mp_charts_flutter_android_platform_interface.dart';
import 'package:mp_charts_flutter_android/mp_charts_flutter_android_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockMpChartsFlutterAndroidPlatform
    with MockPlatformInterfaceMixin
    implements MpChartsFlutterAndroidPlatform {

  @override
  Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {
  final MpChartsFlutterAndroidPlatform initialPlatform = MpChartsFlutterAndroidPlatform.instance;

  test('$MethodChannelMpChartsFlutterAndroid is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelMpChartsFlutterAndroid>());
  });

  test('getPlatformVersion', () async {
    MpChartsFlutterAndroid mpChartsFlutterAndroidPlugin = MpChartsFlutterAndroid();
    MockMpChartsFlutterAndroidPlatform fakePlatform = MockMpChartsFlutterAndroidPlatform();
    MpChartsFlutterAndroidPlatform.instance = fakePlatform;

    expect(await mpChartsFlutterAndroidPlugin.getPlatformVersion(), '42');
  });
}
