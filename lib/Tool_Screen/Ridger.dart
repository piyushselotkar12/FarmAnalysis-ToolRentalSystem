import 'package:farmAnal/OrderAddress.dart';
import 'package:farmAnal/bank_details_screen.dart';
import 'package:farmAnal/location_screen.dart';
import 'package:flutter/material.dart';

class MyRidger extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Ridger'),
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/back.png'),
            colorFilter: ColorFilter.mode(
              Colors.black.withOpacity(0.3),
              BlendMode.dstATop,
            ),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Ridger:\nBy 1 Stop Cine Digital Pvt Ltd.\n\nService expense per day- Rs:600\n\n1 week offer price- Rs.4000\n\nT&C- If the tool is damged or not returned by the specified date and time, late fees may be charged.\n\nजर साधन खराब झाले असेल किंवा निर्दिष्ट तारीख आणि वेळेपर्यंत परत न केल्यास, विलंब शुल्क आकारले जाऊ शकते.',
                style: TextStyle(fontSize: 24.0),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 20.0),
              GestureDetector(
                child: ElevatedButton(
                  child: Text('Next'),
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

// import 'package:farmAnal/bank_details_screen.dart';
// import 'package:farmAnal/location_screen.dart';
// import 'package:flutter/material.dart';
// //import 'new_screen.dart';
//
// class MyRidger extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       decoration: BoxDecoration(
//         image: DecorationImage(
//           image: AssetImage("assets/images/back.png"),
//           fit: BoxFit.cover,
//           colorFilter: ColorFilter.mode(
//             Colors.black.withOpacity(0.3),
//             BlendMode.dstATop,
//           ),
//         ),
//       ),
//       child: Scaffold(
//         appBar: AppBar(
//           title: Text('Ridger'),
//         ),
//         body: Center(
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               Text(
//                 'Ridger:\nBy 1 Stop Cine Digital Pvt Ltd.\n\nService expense per day- Rs:600\n\n1 week offer price- Rs.4000\n\nT&C- If the tool is damged or not returned by the specified date and time, late fees may be charged.\n\nजर साधन खराब झाले असेल किंवा निर्दिष्ट तारीख आणि वेळेपर्यंत परत न केल्यास, विलंब शुल्क आकारले जाऊ शकते.',
//                 style: TextStyle(fontSize: 24.0),
//                 textAlign: TextAlign.center,
//               ),
//               SizedBox(height: 20.0),
//               GestureDetector(
//                 child: ElevatedButton(
//                   child: Text('Next'),
//                   onPressed: () {
//                     Navigator.push(
//                       context,
//                       MaterialPageRoute(builder: (context) => NagpurMapScreen()),
//                     );
//                   },
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
//
