import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'mp_charts_flutter_method_channel.dart';

abstract class MpChartsFlutterPlatform extends PlatformInterface {
  /// Constructs a MpChartsFlutterPlatform.
  MpChartsFlutterPlatform() : super(token: _token);

  static final Object _token = Object();

  static MpChartsFlutterPlatform _instance = MethodChannelMpChartsFlutter();

  /// The default instance of [MpChartsFlutterPlatform] to use.
  ///
  /// Defaults to [MethodChannelMpChartsFlutter].
  static MpChartsFlutterPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [MpChartsFlutterPlatform] when
  /// they register themselves.
  static set instance(MpChartsFlutterPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}
