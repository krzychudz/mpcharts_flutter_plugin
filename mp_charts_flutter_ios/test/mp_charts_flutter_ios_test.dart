import 'package:flutter_test/flutter_test.dart';
import 'package:mp_charts_flutter_ios/mp_charts_flutter_ios.dart';
import 'package:mp_charts_flutter_ios/mp_charts_flutter_ios_platform_interface.dart';
import 'package:mp_charts_flutter_ios/mp_charts_flutter_ios_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockMpChartsFlutterIosPlatform
    with MockPlatformInterfaceMixin
    implements MpChartsFlutterIosPlatform {

  @override
  Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {
  final MpChartsFlutterIosPlatform initialPlatform = MpChartsFlutterIosPlatform.instance;

  test('$MethodChannelMpChartsFlutterIos is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelMpChartsFlutterIos>());
  });

  test('getPlatformVersion', () async {
    MpChartsFlutterIos mpChartsFlutterIosPlugin = MpChartsFlutterIos();
    MockMpChartsFlutterIosPlatform fakePlatform = MockMpChartsFlutterIosPlatform();
    MpChartsFlutterIosPlatform.instance = fakePlatform;

    expect(await mpChartsFlutterIosPlugin.getPlatformVersion(), '42');
  });
}
