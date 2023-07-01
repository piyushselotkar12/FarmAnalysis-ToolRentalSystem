import 'package:farmAnal/OrderAddress.dart';
import 'package:farmAnal/bank_details_screen.dart';
import 'package:farmAnal/location_screen.dart';
import 'package:flutter/material.dart';
//import 'new_screen.dart';

class MyHarrow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Harrow'),
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
                'Harrow:\nBy 1 Stop Cine Digital Private Limited\nService expense per day-Rs.400\n1 week offer price-Rs.2500\nT&C- If the tool is damged or not returned by the specified date and time, late fees may be charged.\nजर साधन खराब झाले असेल किंवा निर्दिष्ट तारीख आणि वेळेपर्यंत परत न\n केल्यास, विलंब शुल्क आकारले जाऊ शकते.',
                style: TextStyle(fontSize: 24.0),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 20.0),
              GestureDetector(
                child: ElevatedButton(
                  child: Text('About Harrow'),
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
