import 'package:MuFu/models/funds.dart';
import 'package:flutter/material.dart';
import 'package:charts_flutter/flutter.dart' as charts;

class FundChart extends StatelessWidget {
  final List<Funds> data;

  FundChart({@required this.data});
  @override
  Widget build(BuildContext context) {
    print(data);
    List<charts.Series<Funds, String>> series = [
      charts.Series(
          id: "Fund",
          data: data,
          domainFn: (Funds series, _) => series.type,
          measureFn: (Funds series, _) => series.funds,
          colorFn: (Funds series, _) => series.barColor)
    ];
    return charts.BarChart(
      series,
      animate: true,
    );
  }
}
