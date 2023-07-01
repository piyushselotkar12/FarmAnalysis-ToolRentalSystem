import 'package:farmAnal/Crops_Screen/Crops_Screen.dart';
import 'package:farmAnal/Crops_Screen/fruits.dart';
import 'package:farmAnal/Crops_Screen/rice.dart';
import 'package:farmAnal/Crops_Screen/soyabean.dart';
import 'package:farmAnal/Crops_Screen/vegetables.dart';
import 'package:farmAnal/Crops_Screen/wheat.dart';
import 'package:flutter/material.dart';
import 'package:charts_flutter/flutter.dart' as charts;

void main() {
  runApp(MyAnal());
}

class Crop {
  final String name;
  final int yield;

  Crop(this.name, this.yield);
}

class MyAnal extends StatelessWidget {
  final List<Crop> crops = [
    Crop('Wheat', 500),
    Crop('Rice', 650),
    Crop('Fruits', 720),
    Crop('Soybean', 420),
    Crop('Vegetables', 820),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Crop Data',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Crop Data'),
        ),
        body: Container(
          padding: EdgeInsets.all(16.0),
          child: Column(
            children: [
              Text(
                'Crop Yield (in tons per hectare)',
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
                      colorFn: (_, __) => charts.MaterialPalette.blue.shadeDefault,
                      domainFn: (Crop crop, _) => crop.name,
                      measureFn: (Crop crop, _) => crop.yield,
                      data: crops,
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
              SizedBox(height: 20.0),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => MyCrops()),
                  );
                },
                child: Text('Next'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
/*
import 'package:farmAnal/Crops_Screen/fruits.dart';
import 'package:farmAnal/Crops_Screen/rice.dart';
import 'package:farmAnal/Crops_Screen/soyabean.dart';
import 'package:farmAnal/Crops_Screen/vegetables.dart';
import 'package:farmAnal/Crops_Screen/wheat.dart';
import 'package:flutter/material.dart';
import 'package:charts_flutter/flutter.dart' as charts;

void main() {
  runApp(MyAnal());
}

class Crop {
  final String name;
  final int yield;

  Crop(this.name, this.yield);
}

class MyAnal extends StatelessWidget {
  final List<Crop> crops = [
    Crop('Wheat', 500),
    Crop('Rice', 650),
    Crop('Fruits', 720),
    Crop('Soybean', 420),
    Crop('Vegetables', 820),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Crop Data',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Crop Data'),
        ),
        body: Container(
          padding: EdgeInsets.all(16.0),
          child: GestureDetector(
            onTapDown: (TapDownDetails details) {
              // Get the position of the tap on the screen
              Offset tapPosition = details.globalPosition;

              // Get the position of the bar chart relative to the screen
              var  chartKey;
              RenderBox barChartBox = chartKey.currentContext.findRenderObject();
              Offset barChartPosition = barChartBox.localToGlobal(Offset.zero);

              // Calculate the index of the bar that was tapped
              int barIndex = ((tapPosition.dx - barChartPosition.dx) / 40).floor();

              // Navigate to the appropriate screen based on the tapped bar
              if (barIndex == 0) {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => wheat()),
                );
              } else if (barIndex == 1) {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => rice()),
                );
              } else if (barIndex == 2) {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => FruitChart()),
                );
              } else if (barIndex == 3) {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => soyabean()),
                );
              } else if (barIndex == 4) {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) =>  Vegetable()),
                );
              }
            },
            child: Column(
              children: [
                Text(
                  'Crop Yield (in tons per hectare)',
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
                        colorFn: (_, __) => charts.MaterialPalette.blue.shadeDefault,
                        domainFn: (Crop crop, _) => crop.name,
                        measureFn: (Crop crop, _) => crop.yield,
                        data: crops,
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
      ),
    );
  }
}
*/
//////////////////////////////////////////////////////
/*
import 'package:flutter/material.dart';
import 'package:charts_flutter/flutter.dart' as charts;

void main() {
  runApp(MyAnal());
}

class Crop {
  final String name;
  final int yield;

  Crop(this.name, this.yield);
}

class MyAnal extends StatelessWidget {
  final List<Crop> crops = [
    Crop('Wheat', 500),
    Crop('Rice', 650),
    Crop('Fruits', 720),
    Crop('Soybean/Sugarcane', 420),
    Crop('Vegetables', 820),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Crop Data',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Crop Data'),
        ),
        body: Container(
          padding: EdgeInsets.all(16.0),
          child: Column(
            children: [
              Text(
                'Crop Yield (in tons per hectare)',
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
                      colorFn: (_, __) => charts.MaterialPalette.blue.shadeDefault,
                      domainFn: (Crop crop, _) => crop.name,
                      measureFn: (Crop crop, _) => crop.yield,
                      data: crops,
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
*/
/*
import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:charts_flutter/flutter.dart' as charts;

void main() => runApp(MyAnalysis());

class MyAnalysis extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyAnalysis> {
  // Retrieve corn yield data for a specific state and year from USDA NASS API
  Future<List<charts.Series<CropYield, int>>> _getCornYieldData() async {
    var url = Uri.parse('https://quickstats.nass.usda.gov/api/api_GET/?key=YOUR_API_KEY&source_desc=SURVEY&sector_desc=CROPS&group_desc=FIELD%20CROPS&commodity_desc=CORN&agg_level_desc=STATE&state_alpha=IA&year=2020');
    var response = await http.get(url);

    var jsonData = json.decode(response.body);

    List<CropYield> data = [];
    for (var item in jsonData['data']) {
      var year = int.parse(item['Year'].toString());
    var yield = double.parse(item['Value'].toString());
    data.add(CropYield(year, yield));
    }

    return [
    charts.Series<CropYield, int>(
    id: 'Corn Yield',
    colorFn: (_, __) => charts.MaterialPalette.blue.shadeDefault,
    domainFn: (CropYield yield, _) => yield.year,
    measureFn: (CropYield yield, _) => yield.yield,
    data: data,
    )
    ];
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Crop Yield Chart'),
        ),
        body: Center(
          child: FutureBuilder(
            future: _getCornYieldData(),
            builder: (BuildContext context, AsyncSnapshot snapshot) {
              if (!snapshot.hasData) {
                return CircularProgressIndicator();
              } else {
                return charts.LineChart(
                  snapshot.data,
                  animate: true,
                  defaultRenderer: charts.LineRendererConfig(includePoints: true),
                  behaviors: [
                    charts.ChartTitle('Year', behaviorPosition: charts.BehaviorPosition.bottom),
                    charts.ChartTitle('Yield (bushels per acre)', behaviorPosition: charts.BehaviorPosition.start),
                  ],
                );
              }
            },
          ),
        ),
      ),
    );
  }
}
*/
/*
import 'package:flutter/material.dart';

import 'package:charts_flutter/flutter.dart' as charts;

class MyAnalysis extends StatelessWidget {
  final List<charts.Series> seriesList;
  final bool defaultInteraction;

  MyChart(this.seriesList, {this.defaultInteraction = true});

  @override
  Widget build(BuildContext context) {
    return new charts.BarChart(
      seriesList,
      //animate: animate,
      defaultInteraction : defaultInteraction,
      barGroupingType: charts.BarGroupingType.grouped,
      behaviors: [
        new charts.SeriesLegend(),
      ],
      domainAxis: new charts.OrdinalAxisSpec(
        renderSpec: new charts.SmallTickRendererSpec(
          labelStyle: new charts.TextStyleSpec(
            fontSize: 14,
            color: charts.MaterialPalette.black,
          ),
        ),
      ),
      primaryMeasureAxis: new charts.NumericAxisSpec(
        renderSpec: new charts.GridlineRendererSpec(
          lineStyle: new charts.LineStyleSpec(
            color: charts.MaterialPalette.gray.shade300,
          ),
          labelStyle: new charts.TextStyleSpec(
            fontSize: 14,
            color: charts.MaterialPalette.black,
          ),
        ),
      ),
    );
  }
}

void main() {
  runApp(new MaterialApp(
    home: new Scaffold(
      body: new Center(
        child: new MyChart(
          _createSampleData(),
          defaultInteraction: true,
        ),
      ),
    ),
  ));
}

List<charts.Series<CropData, String>> _createSampleData() {
  final data = [
    new CropData('Wheat', 20),
    new CropData('Rice', 30),
    new CropData('Corn', 50),
    new CropData('Soybean', 40),
  ];

  return [
    new charts.Series<CropData, String>(
      id: 'Crop Production',
      colorFn: (_, __) => charts.MaterialPalette.blue.shadeDefault,
      domainFn: (CropData crop, _) => crop.cropName,
      measureFn: (CropData crop, _) => crop.productionAmount,
      data: data,
    ),
  ];
}

class CropData {
  final String cropName;
  final int productionAmount;

  CropData(this.cropName, this.productionAmount);
}
*/

