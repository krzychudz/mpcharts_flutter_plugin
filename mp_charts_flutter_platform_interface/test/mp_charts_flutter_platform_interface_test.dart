import 'package:flutter_test/flutter_test.dart';
import 'package:mp_charts_flutter_platform_interface/mp_charts_flutter_platform_interface.dart';
import 'package:mp_charts_flutter_platform_interface/mp_charts_flutter_platform_interface_platform_interface.dart';
import 'package:mp_charts_flutter_platform_interface/mp_charts_flutter_platform_interface_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockMpChartsFlutterPlatformInterfacePlatform
    with MockPlatformInterfaceMixin
    implements MpChartsFlutterPlatformInterfacePlatform {

  @override
  Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {
  final MpChartsFlutterPlatformInterfacePlatform initialPlatform = MpChartsFlutterPlatformInterfacePlatform.instance;

  test('$MethodChannelMpChartsFlutterPlatformInterface is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelMpChartsFlutterPlatformInterface>());
  });

  test('getPlatformVersion', () async {
    MpChartsFlutterPlatformInterface mpChartsFlutterPlatformInterfacePlugin = MpChartsFlutterPlatformInterface();
    MockMpChartsFlutterPlatformInterfacePlatform fakePlatform = MockMpChartsFlutterPlatformInterfacePlatform();
    MpChartsFlutterPlatformInterfacePlatform.instance = fakePlatform;

    expect(await mpChartsFlutterPlatformInterfacePlugin.getPlatformVersion(), '42');
  });
}
