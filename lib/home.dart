import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'linechart1_data.dart';
import 'piechart1_data.dart';


class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
      ),
      backgroundColor: Color(0xFF22173B),
      body: Row(
        children: [
          Container(
            width: 428, // try to fix width by wrapping with container, ohterwise linechart may try to extend towards infinity.
            height: 428, // same.
            child: Padding(
                padding: const EdgeInsets.all(28.0),
                child: lineChart1,
              ),
          ),
          Container(
            width: 428,
            height: 428,
            child: Padding(
              padding: const EdgeInsets.all(28.0),
               child: pieChart1
              ),
            ),
        ],
      ),
    );
  }
}
