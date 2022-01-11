import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';


int touchedIndex = -1;

List<PieChartSectionData> pieChartSectionData() {
  return List.generate(4, (i) {
    final isTouched = i == touchedIndex;
    final fontSize = isTouched ? 25.0 : 16.0;
    final radius = isTouched ? 60.0 : 50.0;
    switch (i) {
      case 0:
        return pieChartSectionData1;
      case 1:
        return pieChartSectionData2;
      case 2:
        return pieChartSectionData3;
      case 3:
        return pieChartSectionData4;
      default:
        throw Error();
    }
  });
}

PieChartSectionData pieChartSectionData1 = PieChartSectionData(
  color: const Color(0xFFE24226),
  value: 40,
  title: 'Red',
  titleStyle: TextStyle(
    fontWeight: FontWeight.bold,
    color: const Color(0xFFFFFFFF),
  ),
);

PieChartSectionData pieChartSectionData2 = PieChartSectionData(
  color: const Color(0xFF0099F8),
  value: 10,
  title: 'Blue',
  titleStyle: TextStyle(
    fontWeight: FontWeight.bold,
    color: const Color(0xFFFFFFFF),
  ),
);

PieChartSectionData pieChartSectionData3 = PieChartSectionData(
  color: const Color(0xFF02EE35),
  value: 20,
  title: 'Green',
  titleStyle: TextStyle(
    fontWeight: FontWeight.bold,
    color: const Color(0xffffffff),
  ),
);

PieChartSectionData pieChartSectionData4 = PieChartSectionData(
  color: const Color(0xFFCB02EE),
  value: 30,
  title: 'Purple',
  titleStyle: TextStyle(
    fontWeight: FontWeight.bold,
    color: const Color(0xffffffff),
  ),
);
