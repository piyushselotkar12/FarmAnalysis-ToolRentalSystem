import 'package:flutter/material.dart';
import 'package:charts_flutter/flutter.dart' as charts;

void main() {
  runApp(MyRice());
}

class Crop {
  final String state;
  final int yield;

  Crop(this.state, this.yield);
}

class MyRice extends StatelessWidget {
  final List<Crop> riceYield = [
    Crop('Uttar Pradesh', 650),
    Crop('Karnataka', 430),
    Crop('Maharashtra', 530),
    Crop('West Bengal', 580),
    Crop('Madhya Pradesh', 450),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Rice Yield',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Rice Yield'),
        ),
        body: Container(
          padding: EdgeInsets.all(16.0),
          child: Column(
            children: [
              Text(
                'Rice Yield (in tons per hectare)',
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 10.0),
              Expanded(
                child: charts.BarChart(
                  [
                    charts.Series<Crop, String>(
                      id: 'Rice Yield',
                      colorFn: (_, __) =>
                      charts.MaterialPalette.blue.shadeDefault,
                      domainFn: (Crop crop, _) => crop.state,
                      measureFn: (Crop crop, _) => crop.yield,
                      data: riceYield,
                    )
                  ],
                  animate: true,
                  vertical: true,
                  barRendererDecorator: charts.BarLabelDecorator<String>(),
                  domainAxis: charts.OrdinalAxisSpec(
                    renderSpec: charts.NoneRenderSpec(),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
