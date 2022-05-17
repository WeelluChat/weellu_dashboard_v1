import 'package:charts_flutter/flutter.dart' as charts;
import 'package:flutter/cupertino.dart';

class ChatsSeries {
  final String type;
  final int quantity;
  final charts.Color barColor;

  ChatsSeries(this.type, this.quantity, this.barColor);
}
