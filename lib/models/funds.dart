import 'package:charts_flutter/flutter.dart' as charts;
import 'package:flutter/cupertino.dart';

class Funds {
  final int funds;
  String type;
  final charts.Color barColor;

  Funds({@required this.funds, @required this.barColor, @required type});
}
