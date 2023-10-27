package com.mpcharts.flutter.plugin.mp_charts_flutter_android.mp_line_chart

import android.content.Context
import android.view.View
import com.github.mikephil.charting.charts.LineChart
import io.flutter.plugin.platform.PlatformView


class NativeMpLineChart(private val context: Context, private val id: Int, private val creationParams: Map<String?, Any?>?) : PlatformView
 {

     private val chart: LineChart = LineChart(context)

     override fun getView(): View {
        return chart
    }

    override fun dispose() {

    }

 }