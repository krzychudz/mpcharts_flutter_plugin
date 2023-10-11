import 'package:flutter_test/flutter_test.dart';
import 'package:mp_charts_flutter/mp_charts_flutter.dart';
import 'package:mp_charts_flutter/mp_charts_flutter_platform_interface.dart';
import 'package:mp_charts_flutter/mp_charts_flutter_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockMpChartsFlutterPlatform
    with MockPlatformInterfaceMixin
    implements MpChartsFlutterPlatform {

  @override
  Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {
  final MpChartsFlutterPlatform initialPlatform = MpChartsFlutterPlatform.instance;

  test('$MethodChannelMpChartsFlutter is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelMpChartsFlutter>());
  });

  test('getPlatformVersion', () async {
    MpChartsFlutter mpChartsFlutterPlugin = MpChartsFlutter();
    MockMpChartsFlutterPlatform fakePlatform = MockMpChartsFlutterPlatform();
    MpChartsFlutterPlatform.instance = fakePlatform;

    expect(await mpChartsFlutterPlugin.getPlatformVersion(), '42');
  });
}
