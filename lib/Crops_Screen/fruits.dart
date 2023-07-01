/*
import 'package:flutter/material.dart';
import 'package:charts_flutter/flutter.dart' as charts;

void main() {
  runApp(FruitChart());
}

class Fruit {
  final String state;
  final int apple;
  final int banana;
  final int orange;

  Fruit(this.state, this.apple, this.banana, this.orange);
}

class FruitChart extends StatelessWidget {
  final List<Fruit> data = [
    Fruit('Uttar Pradesh', 500, 600, 700),
    Fruit('Karnataka', 300, 400, 500),
    Fruit('Maharashtra', 400, 700, 300),
    Fruit('West Bengal', 600, 300, 800),
    Fruit('Madhya Pradesh', 800, 500, 400),
  ];

  @override
  Widget build(BuildContext context) {
    List<charts.Series<Fruit, String>> seriesList = [
      charts.Series(
        id: 'Apple',
        data: data,
        domainFn: (Fruit fruit, _) => fruit.state,
        measureFn: (Fruit fruit, _) => fruit.apple,
        colorFn: (_, __) => charts.MaterialPalette.red.shadeDefault,
        labelAccessorFn: (Fruit fruit, _) => '${fruit.apple}',
      ),
      charts.Series(
        id: 'Banana',
        data: data,
        domainFn: (Fruit fruit, _) => fruit.state,
        measureFn: (Fruit fruit, _) => fruit.banana,
        colorFn: (_, __) => charts.MaterialPalette.yellow.shadeDefault,
        labelAccessorFn: (Fruit fruit, _) => '${fruit.banana}',
      ),
      charts.Series(
        id: 'Orange',
        data: data,
        domainFn: (Fruit fruit, _) => fruit.state,
        measureFn: (Fruit fruit, _) => fruit.orange,
        colorFn: (_, __) => charts.MaterialPalette.green.shadeDefault,
        labelAccessorFn: (Fruit fruit, _) => '${fruit.orange}',
      ),
    ];

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Fruit Information'),
        ),
        body: Container(
          padding: EdgeInsets.all(16.0),
          child: charts.BarChart(
            seriesList,
            animate: true,
            vertical: true,
            barGroupingType: charts.BarGroupingType.grouped,
            barRendererDecorator: charts.BarLabelDecorator<String>(),
            domainAxis: charts.OrdinalAxisSpec(
              renderSpec: charts.NoneRenderSpec(),
            ),
            primaryMeasureAxis: charts.NumericAxisSpec(
              tickProviderSpec: charts.BasicNumericTickProviderSpec(
                desiredTickCount: 6,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
*/
import 'package:flutter/material.dart';
import 'package:charts_flutter/flutter.dart' as charts;

void main() {
  runApp(MyFruits());
}

class Fruit {
  final String state;
  final int apple;
  final int banana;
  final int orange;

  Fruit(this.state, this.apple, this.banana, this.orange);
}

class MyFruits extends StatelessWidget {
  final List<Fruit> data = [
    Fruit('Uttar Pradesh', 500, 600, 700),
    Fruit('Karnataka', 300, 400, 500),
    Fruit('Maharashtra', 400, 700, 300),
    Fruit('West Bengal', 600, 300, 800),
    Fruit('Madhya Pradesh', 800, 500, 400),
  ];

  @override
  Widget build(BuildContext context) {
    List<charts.Series<Fruit, String>> seriesList = [
      charts.Series(
        id: 'Apple',
        data: data,
        domainFn: (Fruit fruit, _) => fruit.state,
        measureFn: (Fruit fruit, _) => fruit.apple,
        colorFn: (_, __) => charts.MaterialPalette.red.shadeDefault,
        labelAccessorFn: (Fruit fruit, _) => '${fruit.apple}',
      ),
      charts.Series(
        id: 'Banana',
        data: data,
        domainFn: (Fruit fruit, _) => fruit.state,
        measureFn: (Fruit fruit, _) => fruit.banana,
        colorFn: (_, __) => charts.MaterialPalette.yellow.shadeDefault,
        labelAccessorFn: (Fruit fruit, _) => '${fruit.banana}',
      ),
      charts.Series(
        id: 'Orange',
        data: data,
        domainFn: (Fruit fruit, _) => fruit.state,
        measureFn: (Fruit fruit, _) => fruit.orange,
        colorFn: (_, __) => charts.MaterialPalette.green.shadeDefault,
        labelAccessorFn: (Fruit fruit, _) => '${fruit.orange}',
      ),
    ];

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Fruit Information'),
        ),
        body: Container(
          padding: EdgeInsets.all(16.0),
          child: charts.BarChart(
            seriesList,
            animate: true,
            vertical: true,
            barGroupingType: charts.BarGroupingType.grouped,
            barRendererDecorator: charts.BarLabelDecorator<String>(),
            domainAxis: charts.OrdinalAxisSpec(
              renderSpec: charts.NoneRenderSpec(),
            ),
            primaryMeasureAxis: charts.NumericAxisSpec(
              tickProviderSpec: charts.BasicNumericTickProviderSpec(
                desiredTickCount: 6,
              ),
            ),
          ),
        ),
      ),
    );
  }
}



