

import 'package:farmAnal/OrderAddress.dart';
import 'package:farmAnal/Tool_Screen/Boom.dart';
import 'package:farmAnal/Tool_Screen/Cultivator.dart';
import 'package:farmAnal/Tool_Screen/Harrow.dart';
import 'package:farmAnal/Tool_Screen/Plough.dart';
import 'package:farmAnal/Tool_Screen/Pump.dart';
import 'package:farmAnal/Tool_Screen/Ridger.dart';
import 'package:farmAnal/Tool_Screen/Thresher.dart';
import 'package:farmAnal/Tool_Screen/Tiller.dart';
import 'package:farmAnal/Tool_Screen/Tractor.dart';
import 'package:farmAnal/account_payment.dart';
import 'package:farmAnal/bank_details_screen.dart';
import 'package:farmAnal/location_screen.dart';
import 'package:flutter/material.dart';
class MyTool extends StatefulWidget {
  @override
  _MyToolState createState() => _MyToolState();
}

class _MyToolState extends State<MyTool> {
  List<bool> _selectedList = List.filled(10, false);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tools'),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                'Farming Tools',
                style: TextStyle(fontSize: 24.0),
              ),
              SizedBox(height: 20.0),
              Container(
                height: 1800.0,
                child: ListView(
                  scrollDirection: Axis.vertical,
                  children: <Widget>[
                    buildImageWithText(0, 'assets/images/ridger.png', 'Ridger:'),
                    SizedBox(width: 16.0),
                    SizedBox(height: 20.0),
                    GestureDetector(
                      child: ElevatedButton(
                        child: Text('About Ridger'),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => MyRidger()),
                          );
                        },
                      ),
                    ),
                    buildImageWithText(1, 'assets/images/tiller.png', 'Tiller:'),
                    SizedBox(width: 16.0),
                    SizedBox(height: 20.0),
                    GestureDetector(
                      child: ElevatedButton(
                        child: Text('About Tiller'),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => MyTiller()),
                          );
                        },
                      ),
                    ),
                    buildImageWithText(2, 'assets/images/harrow.png', 'Harrow:'),
                    SizedBox(width: 16.0),
                    SizedBox(height: 20.0),
                    GestureDetector(
                      child: ElevatedButton(
                        child: Text('About Harrow'),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => MyHarrow()),
                          );
                        },
                      ),
                    ),
                    buildImageWithText(3, 'assets/images/plough.png', 'Plough:'),
                    SizedBox(width: 16.0),
                    SizedBox(height: 20.0),
                    GestureDetector(
                      child: ElevatedButton(
                        child: Text('About Plough'),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => MyPlough()),
                          );
                        },
                      ),
                    ),
                    buildImageWithText(4, 'assets/images/pump.png', 'Pump:'),
                    SizedBox(width: 16.0),
                    SizedBox(height: 20.0),
                    GestureDetector(
                      child: ElevatedButton(
                        child: Text('About Pump'),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => MyPump()),
                          );
                        },
                      ),
                    ),
                    buildImageWithText(5, 'assets/images/tractor.png', 'Tractor:'),
                    SizedBox(width: 16.0),
                    SizedBox(height: 20.0),
                    GestureDetector(
                      child: ElevatedButton(
                        child: Text('About Tractor'),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => MyTractor()),
                          );
                        },
                      ),
                    ),
                    buildImageWithText(6, 'assets/images/thresher.png', 'Thresher:'),
                    SizedBox(width: 16.0),
                    SizedBox(height: 20.0),
                    GestureDetector(
                      child: ElevatedButton(
                        child: Text('About Thresher'),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => MyThresher()),
                          );
                        },
                      ),
                    ),
                    buildImageWithText(7, 'assets/images/cultivator.png', 'Cultivator:'),
                    SizedBox(width: 16.0),
                    SizedBox(height: 20.0),
                    GestureDetector(
                      child: ElevatedButton(
                        child: Text('About Cultivator'),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => MyCultivator()),
                          );
                        },
                      ),
                    ),
                    buildImageWithText(8, 'assets/images/boom.png', 'Boom:'),
                    SizedBox(width: 16.0),
                    SizedBox(height: 20.0),
                    GestureDetector(
                      child: ElevatedButton(
                        child: Text('About Boom'),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => MyBoom()),
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ),
              Center(
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => AddressDetails()),
                    );
                  },
                  child: Text('Next'),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget buildImageWithText(int index, String imagePath, String imageText) {
    return GestureDetector(
      onTap: () {
        setState(() {
          _selectedList[index] = !_selectedList[index];
        });
      },
      child: Stack(
        children: [
          Image.asset(imagePath),
          if (_selectedList[index])
            Positioned.fill(
              child: Container(
                color: Colors.black26,
                child: Icon(
                  Icons.check,
                  color: Colors.white,
                  size: 45.0,
                ),
              ),
            ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              padding: EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
              color: Colors.black54,
              child: Text(
                imageText,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
