import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:get/get.dart';

import './pie_data.dart';

class pieView extends StatefulWidget {
  pieView({Key? key}) : super(key: key);

  @override
  _pieViewState createState() => _pieViewState();
}

class _pieViewState extends State<pieView> {
  int touchedIndex = -1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("PieChart"),
          centerTitle: true,
          elevation: 0,
        ),
        backgroundColor: Color(0xFF22173B),
        body: Padding(
          padding: EdgeInsets.all(28),
          child: PieChart(PieChartData(
            pieTouchData: PieTouchData(
                touchCallback: (FlTouchEvent event, pieTouchResponse) {
              setState(() {
                if (!event.isInterestedForInteractions ||
                    pieTouchResponse == null ||
                    pieTouchResponse.touchedSection == null) {
                  touchedIndex = -1;
                  return;
                }
                touchedIndex =
                    pieTouchResponse.touchedSection!.touchedSectionIndex;
              });
            }),
            sections: sampleSections(),
          )),
        ));
  }

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
          isTouched ? BorderSide(color: Colors.white10) : BorderSide.none;
      switch (i) {
        case 0:
          return PieChartSectionData(
            color: Colors.red,
            value: pieData1_value[i],
            title: pieData1_title[i],
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
            color: Colors.blue,
            value: pieData1_value[i],
            title: pieData1_title[i],
            radius: radius,
            borderSide: borderSide,
            titleStyle: TextStyle(
              fontSize: fontSize,
              fontWeight: FontWeight.bold,
              color: const Color(0xFFFFFFFF),
            ),
          );
        case 2:
          return PieChartSectionData(
            color: Colors.green,
            value: pieData1_value[i],
            title: pieData1_title[i],
            radius: radius,
            borderSide: borderSide,
            titleStyle: TextStyle(
              fontSize: fontSize,
              fontWeight: FontWeight.bold,
              color: const Color(0xffffffff),
            ),
          );
        case 3:
          return PieChartSectionData(
            color: Colors.purple,
            value: pieData1_value[i],
            title: pieData1_title[i],
            radius: radius,
            borderSide: borderSide,
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
}
