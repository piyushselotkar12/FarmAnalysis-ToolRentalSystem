import 'package:farmAnal/OrderAddress.dart';
import 'package:farmAnal/bank_details_screen.dart';
import 'package:farmAnal/location_screen.dart';
import 'package:flutter/material.dart';
//import 'new_screen.dart';

class MyPump extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Pump'),
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/back.png"),
            fit: BoxFit.cover,
            colorFilter: ColorFilter.mode(
              Colors.white.withOpacity(0.2),
              BlendMode.dstATop,
            ),
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Water Pump:\nBy Aria Aerial Platforms Private Limited\n\nService expense per day-Rs.1200\n\n1 week offer price-8200\n\nT&C- If the tool is damged or not returned by the specified date and time, late fees may be charged.\n\nजर साधन खराब झाले असेल किंवा निर्दिष्ट तारीख आणि वेळेपर्यंत परत न केल्यास, विलंब शुल्क आकारले जाऊ शकते.',
                style: TextStyle(fontSize: 24.0),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 20.0),
              GestureDetector(
                child: ElevatedButton(
                  child: Text('About Pump'),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => AddressDetails()),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
