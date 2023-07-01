import 'package:flutter/material.dart';
import 'package:charts_flutter/flutter.dart' as charts;

void main() {
  runApp( MyVegetable());
}

class Crop {
  final String name;
  final int yield;

  Crop(this.name, this.yield);
}

class MyVegetable extends StatelessWidget {
  final List<Crop> crops = [
    Crop('Uttar Pradesh', 520),
    Crop('Karnataka', 680),
    Crop('Maharashtra', 610),
    Crop('West Bengal', 410),
    Crop('Madhya Pradesh', 740),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Vegetable Yield',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Vegetable Yield'),
        ),
        body: Container(
          padding: EdgeInsets.all(16.0),
          child: Column(
            children: [
              Text(
                'Vegetable Yield (in tons per hectare)',
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
                      id: 'Crops',
                      colorFn: (_, __) =>
                      charts.MaterialPalette.blue.shadeDefault,
                      domainFn: (Crop crop, _) => crop.name,
                      measureFn: (Crop crop, _) => crop.yield,
                      data: crops,
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
