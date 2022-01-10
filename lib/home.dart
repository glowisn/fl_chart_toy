import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';

import './lineChart1Data.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
      ),
      backgroundColor: Color(0xFF22173B),
      body: Padding(
          padding: const EdgeInsets.all(28.0),
          child: lineChart1,
        ),
    );
  }
}
