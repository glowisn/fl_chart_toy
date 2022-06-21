import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class Pie2 extends StatefulWidget {
  const Pie2({Key? key}) : super(key: key);

  @override
  State<Pie2> createState() => _Pie2State();
}

class _Pie2State extends State<Pie2> {
  int touchedIndex = -1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Pie2"),
      ),
      body: Container(
        width: 500,
        height: 500,
        child: PieChart(PieChartData(
          // pieTouchData: PieTouchData(
          //     touchCallback: (FlTouchEvent event, pieTouchResponse) {
          //   setState(() {
          //     if (!event.isInterestedForInteractions ||
          //         pieTouchResponse == null ||
          //         pieTouchResponse.touchedSection == null) {
          //       touchedIndex = -1;
          //       return;
          //     }
          //     touchedIndex =
          //         pieTouchResponse.touchedSection!.touchedSectionIndex;
          //   });
          // }),
          borderData: FlBorderData(
            show: false,
          ),
          sectionsSpace: 0,
          centerSpaceRadius: 40,
          sections: showingSections(),
          startDegreeOffset: 50,
        )),
      ),
    );
  }

  List<PieChartSectionData> showingSections() {
    return List.generate(2, (i) {
      final isTouched = i == touchedIndex;
      final fontSize = isTouched ? 25.0 : 16.0;
      final radius = isTouched ? 60.0 : 50.0;
      switch (i) {
        case 0:
          return PieChartSectionData(
            color: const Color(0xff0293ee),
            value: 40,
            title: '40%',
            radius: radius,
            titleStyle: TextStyle(
                fontSize: fontSize,
                fontWeight: FontWeight.bold,
                color: const Color(0xffffffff)),
          );
        case 1:
          return PieChartSectionData(
            color: const Color(0xfff8b250),
            value: 60,
            title: '60%',
            radius: radius,
            titleStyle: TextStyle(
                fontSize: fontSize,
                fontWeight: FontWeight.bold,
                color: const Color(0xffffffff)),
          );
        // case 2:
        //   return PieChartSectionData(
        //     color: const Color(0xff845bef),
        //     value: 15,
        //     title: '15%',
        //     radius: radius,
        //     titleStyle: TextStyle(
        //         fontSize: fontSize,
        //         fontWeight: FontWeight.bold,
        //         color: const Color(0xffffffff)),
        //   );
        // case 3:
        //   return PieChartSectionData(
        //     color: const Color(0xff13d38e),
        //     value: 15,
        //     title: '15%',
        //     radius: radius,
        //     titleStyle: TextStyle(
        //         fontSize: fontSize,
        //         fontWeight: FontWeight.bold,
        //         color: const Color(0xffffffff)),
        //   );
        default:
          throw Error();
      }
    });
  }
}
