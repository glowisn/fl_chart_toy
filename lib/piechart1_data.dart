import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'pie_data.dart';

PieChart pieChart1 = PieChart(sampleData2);
var touchedIndex = -1.obs;

PieChartData get sampleData2 => PieChartData(
      pieTouchData:
          PieTouchData(
            touchCallback: (FlTouchEvent event, pieTouchResponse) {
        if (!event.isInterestedForInteractions ||
            pieTouchResponse == null ||
            pieTouchResponse.touchedSection == null) {
          touchedIndex = -1;
          return;
        }
        touchedIndex = pieTouchResponse.touchedSection!.touchedSectionIndex;
      }),
      sections: sampleSections(),
    );

List<PieChartSectionData> sampleSections() {
  return pieChartSectionData();
}

List<PieChartSectionData> pieChartSectionData() {
  // List<PieChartSectionData> sampleList = [];
  // var keys = pieData1.keys;
  // List<String> listString = keys.toList();
  // for (var key in keys) {
  //   final isTouched = keys == listString[touchedIndex];
  //   final fontSize = isTouched ? 25.0 : 16.0;
  //   final radius = isTouched ? 60.0 : 50.0;
  //   sampleList.add(PieChartSectionData(
  //     value: pieData1[key],
  //     title: key,
  //   ));
  // }
  // return sampleList;

  return List.generate(4, (i) {
    final isTouched = i == touchedIndex;
    final fontSize = isTouched ? 25.0 : 16.0;
    final radius = isTouched ? 60.0 : 50.0;
    final borderSide =
        isTouched ? BorderSide.none : BorderSide(color: Colors.amber);
    switch (i) {
      case 0:
        return PieChartSectionData(
          color: Colors.red,
          value: pieData1['Red'],
          title: 'Red',
          radius: 60.0,
          borderSide: BorderSide(color: Colors.amber),
          titleStyle: TextStyle(
            fontSize: 25.0,
            fontWeight: FontWeight.bold,
            color: const Color(0xFFFFFFFF),
          ),
        );
      case 1:
        return PieChartSectionData(
          color: Colors.blue,
          value: pieData1['Blue'],
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
          color: Colors.green,
          value: pieData1['Green'],
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
          color: Colors.purple,
          value: pieData1['Purple'],
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
