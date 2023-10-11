
import 'mp_charts_flutter_ios_platform_interface.dart';

class MpChartsFlutterIos {
  Future<String?> getPlatformVersion() {
    return MpChartsFlutterIosPlatform.instance.getPlatformVersion();
  }
}
