import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'mp_charts_flutter_platform_interface_method_channel.dart';

abstract class MpChartsFlutterPlatformInterfacePlatform extends PlatformInterface {
  /// Constructs a MpChartsFlutterPlatformInterfacePlatform.
  MpChartsFlutterPlatformInterfacePlatform() : super(token: _token);

  static final Object _token = Object();

  static MpChartsFlutterPlatformInterfacePlatform _instance = MethodChannelMpChartsFlutterPlatformInterface();

  /// The default instance of [MpChartsFlutterPlatformInterfacePlatform] to use.
  ///
  /// Defaults to [MethodChannelMpChartsFlutterPlatformInterface].
  static MpChartsFlutterPlatformInterfacePlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [MpChartsFlutterPlatformInterfacePlatform] when
  /// they register themselves.
  static set instance(MpChartsFlutterPlatformInterfacePlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}
