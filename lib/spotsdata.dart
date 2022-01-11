import 'package:fl_chart/fl_chart.dart';
import 'dart:math';

List<FlSpot> spots1_1 = [
  FlSpot(0, 2.7),
  FlSpot(1, 4.6),
  FlSpot(2, 3.5),
  FlSpot(3, 4.5),
  FlSpot(4, 6),
  FlSpot(5, 4.2),
  FlSpot(6, 3),
  FlSpot(7, 2),
  FlSpot(8, 3.7),
  FlSpot(9, 4.8),
  FlSpot(10, 4.2),
];

List<FlSpot> spots1_2 = [
  FlSpot(0, 5),
  FlSpot(1, 4),
  FlSpot(2, 2),
  FlSpot(3, 1.2),
  FlSpot(4, 2.8),
  FlSpot(5, 3.6),
  FlSpot(6, 4.8),
  FlSpot(7, 5.8),
  FlSpot(8, 6.2),
  FlSpot(9, 4.2),
  FlSpot(10, 3.0),
];

List<FlSpot> spots1_3 = [
  for (double i = 0; i <= 10; i++) ...{
    getSpot(i),
  }
];

FlSpot getSpot(double i) {
  double n = double.parse((Random().nextDouble() * 9.0).toStringAsFixed(1));
  if (n.remainder(1) == 0) {
    n += 0.1;
  }
  return FlSpot(i, n);
}
