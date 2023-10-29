import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:mp_charts_flutter_platform_interface/mp_charts_flutter_platform_interface.dart';

class MpChartsFlutterAndroid extends MpChartsFlutterPlatformInterface {
  @override
  Widget getPlatformView() {
    return const _MpChartsAndroidNativeView();
  }

  static void registerWith() {
    MpChartsFlutterPlatformInterface.instance = MpChartsFlutterAndroid();
  }
}

class _MpChartsAndroidNativeView extends StatelessWidget {
  const _MpChartsAndroidNativeView({super.key});

  @override
  Widget build(BuildContext context) {
    return const AndroidView(
      viewType: "native-view",
      layoutDirection: TextDirection.ltr,
      creationParams: <String, dynamic>{},
      creationParamsCodec: StandardMessageCodec(),
    );
  }
}
