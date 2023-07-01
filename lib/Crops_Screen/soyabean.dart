import 'package:flutter/material.dart';
import 'package:charts_flutter/flutter.dart' as charts;

void main() {
  runApp(MySoyabean());
}

class Crop {
  final String state;
  final int yield;

  Crop(this.state, this.yield);
}

class MySoyabean extends StatelessWidget {
  final List<Crop> soybeanYields = [
    Crop('Uttar Pradesh', 800),
    Crop('Karnataka', 550),
    Crop('Maharashtra', 700),
    Crop('West Bengal', 450),
    Crop('Madhya Pradesh', 850),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Soybean Yield by State',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Soybean Yield by State'),
        ),
        body: Container(
          padding: EdgeInsets.all(16.0),
          child: Column(
            children: [
              Text(
                'Soybean Yield by State (in kg per hectare)',
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
                      id: 'Soybean Yield',
                      colorFn: (_, __) => charts.MaterialPalette.green.shadeDefault,
                      domainFn: (Crop crop, _) => crop.state,
                      measureFn: (Crop crop, _) => crop.yield,
                      data: soybeanYields,
                    )
                  ],
                  animate: true,
                  vertical: false,
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
