import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'mp_charts_flutter_ios_method_channel.dart';

abstract class MpChartsFlutterIosPlatform extends PlatformInterface {
  /// Constructs a MpChartsFlutterIosPlatform.
  MpChartsFlutterIosPlatform() : super(token: _token);

  static final Object _token = Object();

  static MpChartsFlutterIosPlatform _instance = MethodChannelMpChartsFlutterIos();

  /// The default instance of [MpChartsFlutterIosPlatform] to use.
  ///
  /// Defaults to [MethodChannelMpChartsFlutterIos].
  static MpChartsFlutterIosPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [MpChartsFlutterIosPlatform] when
  /// they register themselves.
  static set instance(MpChartsFlutterIosPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}
