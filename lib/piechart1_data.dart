import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

import 'pie_data.dart';

PieChart pieChart1 = PieChart(sampleData2);

PieChartData get sampleData2 => PieChartData(
      sections: sampleSections(),
    );

List<PieChartSectionData> sampleSections() {
  return pieChartSectionData();
}

int touchedIndex = -1;

List<PieChartSectionData> pieChartSectionData() {
  return List.generate(4, (i) {
    final isTouched = i == touchedIndex;
    final fontSize = isTouched ? 25.0 : 16.0;
    final radius = isTouched ? 60.0 : 50.0;
    final borderSide =
        isTouched ? BorderSide.none : BorderSide(color: Colors.amber);
    switch (i) {
      case 0:
        return PieChartSectionData(
          color: const Color(0xFFE24226),
          value: pieData1[i],
          title: 'Red',
          radius: radius,
          borderSide: borderSide,
          titleStyle: TextStyle(
            fontSize: fontSize,
            fontWeight: FontWeight.bold,
            color: const Color(0xFFFFFFFF),
          ),
        );
      case 1:
        return PieChartSectionData(
          color: const Color(0xFF0099F8),
          value: pieData1[i],
          title: 'Blue',
          radius: radius,
          titleStyle: TextStyle(
            fontSize: fontSize,
            fontWeight: FontWeight.bold,
            color: const Color(0xFFFFFFFF),
          ),
        );
      case 2:
        return PieChartSectionData(
          color: const Color(0xFF02EE35),
          value: pieData1[i],
          title: 'Green',
          radius: radius,
          titleStyle: TextStyle(
            fontSize: fontSize,
            fontWeight: FontWeight.bold,
            color: const Color(0xffffffff),
          ),
        );
      case 3:
        return PieChartSectionData(
          color: const Color(0xFFCB02EE),
          value: pieData1[i],
          title: 'Purple',
          radius: radius,
          titleStyle: TextStyle(
            fontSize: fontSize,
            fontWeight: FontWeight.bold,
            color: const Color(0xffffffff),
          ),
        );
      default:
        throw Error();
    }
  });
}
