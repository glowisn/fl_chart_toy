import 'package:fl_chart/fl_chart.dart';
import 'package:fl_chart_toy/pieChartSections.dart';

import './lineChart1Data.dart';

PieChart pieChart1 = PieChart(sampleData2);

PieChartData get sampleData2 => PieChartData(
      sections: sampleSections(),
    );

List<PieChartSectionData> sampleSections() {
  return List.generate(4, (i) {
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
