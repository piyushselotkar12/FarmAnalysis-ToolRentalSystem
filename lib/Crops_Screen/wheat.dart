import 'package:flutter/material.dart';
import 'package:charts_flutter/flutter.dart' as charts;

void main() {
  runApp(MyWheat());
}

class Crop {
  final String state;
  final int yield;

  Crop(this.state, this.yield);
}

class MyWheat extends StatelessWidget {
  final List<Crop> wheatData = [
    Crop('Uttar Pradesh', 43),
    Crop('Karnataka', 32),
    Crop('Maharashtra', 36),
    Crop('West Bengal', 26),
    Crop('Madhya Pradesh', 46),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Wheat Yield Data',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Wheat Yield Data'),
        ),
        body: Container(
          padding: EdgeInsets.all(16.0),
          child: Column(
            children: [
              Text(
                'Wheat Yield Data (in tons per hectare)',
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
                      id: 'Wheat Yield',
                      colorFn: (_, __) => charts.MaterialPalette.blue.shadeDefault,
                      domainFn: (Crop crop, _) => crop.state,
                      measureFn: (Crop crop, _) => crop.yield,
                      data: wheatData,
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
