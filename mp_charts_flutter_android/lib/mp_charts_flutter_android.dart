
import 'mp_charts_flutter_android_platform_interface.dart';

class MpChartsFlutterAndroid {
  Future<String?> getPlatformVersion() {
    return MpChartsFlutterAndroidPlatform.instance.getPlatformVersion();
  }
}
