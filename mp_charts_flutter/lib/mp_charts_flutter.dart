import 'package:flutter/material.dart';
import 'package:mp_charts_flutter_platform_interface/mp_charts_flutter_platform_interface_platform_interface.dart';

class MpChart extends StatelessWidget {
  const MpChart({super.key});

  @override
  Widget build(BuildContext context) {
    return MpChartPlugin().getPlatformView();
  }
}

class MpChartPlugin extends MpChartsFlutterPlatformInterface {
  @override
  Widget getPlatformView() {
    return MpChartsFlutterPlatformInterface.instance.getPlatformView();
  }
}
