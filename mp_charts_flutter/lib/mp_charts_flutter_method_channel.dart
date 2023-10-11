import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'mp_charts_flutter_platform_interface.dart';

/// An implementation of [MpChartsFlutterPlatform] that uses method channels.
class MethodChannelMpChartsFlutter extends MpChartsFlutterPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('mp_charts_flutter');

  @override
  Future<String?> getPlatformVersion() async {
    final version = await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }
}
