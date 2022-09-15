import 'package:fl_chart/fl_chart.dart';
import 'package:fl_chart_toy/spotsdata.dart';
import 'package:flutter/material.dart';

LineChart lineChart1 = LineChart(sampleData1);

LineChartData get sampleData1 => LineChartData(
      lineBarsData: lineBarsData1,
      gridData: gridData,
      titlesData: titleData,
      borderData: borderData,
      lineTouchData: lineTouchData,
      minX: 0,
      maxX: 10,
      minY: 0,
      maxY: 10,
    );

List<LineChartBarData> get lineBarsData1 => [
      lineChartBarData1_1,
      lineChartBarData1_2,
      lineChartBarData1_3,
    ];

LineChartBarData get lineChartBarData1_1 => LineChartBarData(
      isCurved: true, //자연스러운 곡선
      colors: [
        const Color(0xFFEB48EB),
        const Color(0xFFF0A645),
        const Color(0xFFD82D36)
      ], //선 색깔 여러개 하면 순서대로 그라데이션 됨^^
      barWidth: 4, //차트 선 굵기
      isStrokeCapRound: true, // line의 캡을 둥글게 한다
      dotData: FlDotData(
        show: false,
      ), // 데이터 점 동그라미 안보이게 하기
      //belowBarData: BarAreaData(show: true), // 선 아래를 채우기
      spots: spots1_1,
    );

LineChartBarData get lineChartBarData1_2 => LineChartBarData(
      isCurved: true,
      colors: const [
        const Color(0xff27b6fc),
        const Color(0xFF86FD37),
      ],
      barWidth: 4,
      isStrokeCapRound: true,
      dotData: FlDotData(show: false),
      belowBarData: BarAreaData(
        show: true,
        colors: const [
          const Color(0x4427b6fc),
          const Color(0x4486FD37),
        ],
      ),
      spots: spots1_2,
    );

LineChartBarData get lineChartBarData1_3 => LineChartBarData(
      isCurved: true,
      colors: [
        const Color(0xFF8356FF),
        const Color(0xFFF4A0FF),
      ],
      barWidth: 4,
      isStrokeCapRound: true,
      dotData: FlDotData(show: false),
      spots: spots1_3,
    );

FlGridData get gridData => FlGridData(show: true
    //drawHorizontalLine: false,
    //drawVerticalLine: false,
    //horizontalInterval : 10.0,
    );

FlTitlesData get titleData => FlTitlesData(
      bottomTitles: bottomTitles,
      leftTitles: leftTitles,
      rightTitles: SideTitles(showTitles: false),
      topTitles: SideTitles(showTitles: false),
    );

SideTitles get bottomTitles => SideTitles(
      showTitles: true,
      interval: 1,
      getTextStyles: (context, value) => const TextStyle(
        color: Color(0xFFFCF8E5),
        fontWeight: FontWeight.bold,
        fontSize: 16.0,
      ),
      getTitles: (value) {
        switch (value.toInt()) {
          case 2:
            return 'FEB';
          case 5:
            return 'MAY';
          case 8:
            return 'AUG';
        }
        return '';
      },
    );

SideTitles get leftTitles => SideTitles(
      showTitles: true,
      interval: 1,
      getTextStyles: (context, value) => const TextStyle(
        color: Color(0xFFAAFA99),
        fontWeight: FontWeight.bold,
        fontSize: 14.0,
      ),
      getTitles: (value) {
        return value.toString() + 'M';
      },
      reservedSize: 28, // wanna wrap text?
    );

FlBorderData get borderData => FlBorderData(
    show: true,
    border: const Border(
      bottom: BorderSide(color: Color(0xff4e4965), width: 4),
      //right: BorderSide(color: Colors.transparent),
    ));

LineTouchData get lineTouchData => LineTouchData(
      handleBuiltInTouches: true,
      touchTooltipData: LineTouchTooltipData(
        // 마우스 올릴 시 나오는 툴팁 데이터에 관한 설정ㅂ
        tooltipBgColor: Colors.white60,
        tooltipRoundedRadius: 20,
        fitInsideHorizontally: true,
        fitInsideVertically: true, // 툴팁 데이터가 차트 밖으로 나가지 않게 함
        maxContentWidth: 24.0,
        //rotateAngle: 20,
      ),
    );
