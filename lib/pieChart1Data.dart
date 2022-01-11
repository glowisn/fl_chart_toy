import 'package:fl_chart/fl_chart.dart';

import './pieChartSections.dart';

PieChart pieChart1 = PieChart(sampleData2);

PieChartData get sampleData2 => PieChartData(
      sections: sampleSections(),
    );

List<PieChartSectionData> sampleSections() {
  return pieChartSectionData();
}
