import 'package:farmAnal/OrderAddress.dart';
import 'package:farmAnal/bank_details_screen.dart';
import 'package:farmAnal/location_screen.dart';
import 'package:flutter/material.dart';

class MyTractor extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tractor'),
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/back.png'),
            colorFilter: ColorFilter.mode(
              Colors.white.withOpacity(0.2),
              BlendMode.dstATop,
            ),
            fit: BoxFit.cover,
          ),
          color: Colors.black.withOpacity(0.2),
          // Adjust the opacity of the background image with the color property
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Tractor:\nBy Green World Buildcon And Infra Private Limited\n\nService expense per day-Rs.2500\n\n1 week offer price-Rs. 17000\n\nT&C- If the tool is damged or not returned by the specified date and time, late fees may be charged.\n\nजर साधन खराब झाले असेल किंवा निर्दिष्ट तारीख आणि वेळेपर्यंत परत न केल्यास, विलंब शुल्क आकारले जाऊ शकते.',
                style: TextStyle(fontSize: 24.0),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 20.0),
              GestureDetector(
                child: ElevatedButton(
                  child: Text('About Tractor'),
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
