import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'mp_charts_flutter_android_method_channel.dart';

abstract class MpChartsFlutterAndroidPlatform extends PlatformInterface {
  /// Constructs a MpChartsFlutterAndroidPlatform.
  MpChartsFlutterAndroidPlatform() : super(token: _token);

  static final Object _token = Object();

  static MpChartsFlutterAndroidPlatform _instance = MethodChannelMpChartsFlutterAndroid();

  /// The default instance of [MpChartsFlutterAndroidPlatform] to use.
  ///
  /// Defaults to [MethodChannelMpChartsFlutterAndroid].
  static MpChartsFlutterAndroidPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [MpChartsFlutterAndroidPlatform] when
  /// they register themselves.
  static set instance(MpChartsFlutterAndroidPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}
