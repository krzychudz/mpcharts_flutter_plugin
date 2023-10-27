import 'package:flutter/widgets.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class _PlaceholderImplementation extends MpChartsFlutterPlatformInterface {}

abstract class MpChartsFlutterPlatformInterface extends PlatformInterface {
  /// Constructs a MpChartsFlutterPlatformInterfacePlatform.
  MpChartsFlutterPlatformInterface() : super(token: _token);

  static final Object _token = Object();

  static MpChartsFlutterPlatformInterface _instance =
      _PlaceholderImplementation();

  /// The default instance of [MpChartsFlutterPlatformInterfacePlatform] to use.
  ///
  /// Defaults to [MethodChannelMpChartsFlutterPlatformInterface].
  static MpChartsFlutterPlatformInterface get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [MpChartsFlutterPlatformInterfacePlatform] when
  /// they register themselves.
  static set instance(MpChartsFlutterPlatformInterface instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  // Future<String?> getPlatformVersion() {
  //   throw UnimplementedError('platformVersion() has not been implemented.');
  // }

  Widget getPlatformView() {
    throw UnimplementedError('getPlatformView() has not been implemented.');
  }
}
