import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'mp_charts_flutter_platform_interface_platform_interface.dart';

/// An implementation of [MpChartsFlutterPlatformInterfacePlatform] that uses method channels.
class MethodChannelMpChartsFlutterPlatformInterface extends MpChartsFlutterPlatformInterfacePlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('mp_charts_flutter_platform_interface');

  @override
  Future<String?> getPlatformVersion() async {
    final version = await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }
}
