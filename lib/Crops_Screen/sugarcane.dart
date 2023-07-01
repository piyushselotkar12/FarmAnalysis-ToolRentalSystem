import 'package:flutter/material.dart';
import 'package:charts_flutter/flutter.dart' as charts;

void main() {
  runApp(MySugarcane());
}

class Crop {
  final String state;
  final int yield;

  Crop(this.state, this.yield);
}

class MySugarcane extends StatelessWidget {
  final List<Crop> sugarcaneYields = [
    Crop('Uttar Pradesh', 1000),
    Crop('Maharashtra', 850),
    Crop('Karnataka', 700),
    Crop('Tamil Nadu', 600),
    Crop('Andhra Pradesh', 900),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Sugarcane Yield by State',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Sugarcane Yield by State'),
        ),
        body: Container(
          padding: EdgeInsets.all(16.0),
          child: Column(
            children: [
              Text(
                'Sugarcane Yield by State (in kg per hectare)',
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
                      id: 'Sugarcane Yield',
                      colorFn: (_, __) => charts.MaterialPalette.blue.shadeDefault,
                      domainFn: (Crop crop, _) => crop.state,
                      measureFn: (Crop crop, _) => crop.yield,
                      data: sugarcaneYields,
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
