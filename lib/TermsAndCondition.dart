import 'package:flutter/material.dart';

class TermsAndConditionsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Terms and Conditions'),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              'Introduction',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20.0,
              ),
            ),
            SizedBox(height: 10.0),
            Text(
              'These terms and conditions govern your use of the FarmAnal mobile application.',
              style: TextStyle(fontSize: 16.0),
            ),
            SizedBox(height: 20.0),
            Text(
              'Disclaimer',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20.0,
              ),
            ),
            SizedBox(height: 10.0),
            Text(
              'Farm Analysis and Tool Rental provides general information about farming practices and does not take into account the specific circumstances of any user. Users should always consult with a professional advisor before making any decisions based on the information provided by FarmAnal.',
              style: TextStyle(fontSize: 16.0),
            ),
            SizedBox(height: 20.0),
            Text(
              'Intellectual Property',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20.0,
              ),
            ),
            SizedBox(height: 10.0),
            Text(
              'The Farm Analysis and Tool Rental mobile application and its contents are protected by copyright, trademark, and other intellectual property laws. You may not modify, copy, reproduce, republish, upload, post, transmit, or distribute any portion of the application or its contents without the prior written consent of FarmAnal.',
              style: TextStyle(fontSize: 16.0),
            ),
            SizedBox(height: 10.0),
            Text(
              'The Farm Analysis and Tool Rental mobile application provides farming analysis and recommendations based on various factors such as soil conditions, weather data, and crop patterns. The analysis and recommendations are generated using algorithms and data models, but they may not always be accurate or suitable for every farming situation. Users should use their discretion and consider other relevant factors before implementing any farming practices suggested by the application.',
              style: TextStyle(fontSize: 16.0),
            ),
            SizedBox(height: 20.0),
            Text(
              'Tool Rental System',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20.0,
              ),
            ),
            SizedBox(height: 10.0),
            Text(
              'Farm Analysis and Tool Rental provides a tool rental system where users can rent farming tools and equipment from other users. The availability, condition, and terms of rental for each tool are determined by the tool owner. FarmAnal does not guarantee the quality, functionality, or suitability of the rented tools. Users should inspect the tools before renting and use them at their own risk. FarmAnal is not responsible for any damages, injuries, or losses resulting from the use of rented tools.',
              style: TextStyle(fontSize: 16.0),
            ),
            SizedBox(height: 20.0),
            Text(
              'Changes to the Terms and Conditions',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20.0,
              ),
            ),

            SizedBox(height: 10.0),
            Text(
              'Farm Analysis and Tool Rental may revise these terms and conditions at any time without notice. By using the application, you are agreeing to be bound by the current version of these terms and conditions.',
              style: TextStyle(fontSize: 16.0),
            ),
          ],
        ),
      ),
    );
  }
}
