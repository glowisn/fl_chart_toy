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
      body: Container(
        width: 800, // try to fix width by wrapping with container, ohterwise linechart may try to extend towards infinity.
        height: 800, // why this wont work
        child: Padding(
            padding: const EdgeInsets.all(28.0),
            child: lineChart1,
          ),
      ),
    );
  }
}
