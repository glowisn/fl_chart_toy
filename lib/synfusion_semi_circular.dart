import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:syncfusion_flutter_gauges/gauges.dart';

class SemiCircle extends StatefulWidget {
  const SemiCircle({Key? key}) : super(key: key);

  @override
  State<SemiCircle> createState() => _SemiCircleState();
}

class _SemiCircleState extends State<SemiCircle> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Semi Circle"),
      ),
      body: Container(
          child: SfRadialGauge(
        axes: <RadialAxis>[
          RadialAxis(
            showLabels: false,
            showTicks: false,
            startAngle: 180,
            endAngle: 0,
            radiusFactor: 0.7,
            canScaleToFit: true,
            axisLineStyle: const AxisLineStyle(
              thickness: 0.1,
              color: Color.fromARGB(30, 0, 169, 181),
              thicknessUnit: GaugeSizeUnit.factor,
              cornerStyle: CornerStyle.startCurve,
            ),
            pointers: const <GaugePointer>[
              RangePointer(
                  value: 30,
                  width: 0.1,
                  sizeUnit: GaugeSizeUnit.factor,
                  cornerStyle: CornerStyle.bothCurve)
            ],
          ),
        ],
      )),
    );
  }
}
