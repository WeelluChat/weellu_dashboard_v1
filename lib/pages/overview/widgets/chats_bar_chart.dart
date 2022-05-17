import 'package:dashboard_v1/pages/overview/widgets/bar_chart.dart';
import 'package:flutter/material.dart';
import 'package:charts_flutter/flutter.dart' as charts;

class ChartsChart extends StatelessWidget {
  final List<ChatsSeries> data;

  const ChartsChart({Key key, this.data}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<charts.Series<ChatsSeries, String>> series = [
      charts.Series(
        id: "Envios",
        data: data,
        domainFn: (ChatsSeries series, _) => series.type,
        measureFn: (ChatsSeries series, _) => series.quantity,
        colorFn: (ChatsSeries series, _) => series.barColor,
        labelAccessorFn: (ChatsSeries series, _) => series.quantity.toString(),
      ),
    ];
    return charts.BarChart(
      series,
      animate: true,
      vertical: true,
      primaryMeasureAxis: const charts.NumericAxisSpec(
        renderSpec: charts.GridlineRendererSpec(
          labelStyle: charts.TextStyleSpec(color: charts.Color.white),
        ),
      ),
      domainAxis: const charts.OrdinalAxisSpec(
        renderSpec: charts.SmallTickRendererSpec(
          labelStyle: charts.TextStyleSpec(color: charts.Color.white),
        ),
      ),
      barRendererDecorator: charts.BarLabelDecorator(
        insideLabelStyleSpec: charts.TextStyleSpec(
          color: charts.ColorUtil.fromDartColor(Colors.white),
        ),
        outsideLabelStyleSpec: charts.TextStyleSpec(
            color: charts.ColorUtil.fromDartColor(Colors.white)),
      ),
    );
  }
}
