import 'package:farmAnal/home_screen.dart';
import 'package:farmAnal/rating.dart';
//import 'package:farmAnal/rating_screen.dart'; // import rating screen
import 'package:farmAnal/welcome_screen.dart';
import 'package:flutter/material.dart';

class MyOrder extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Order Confirmation'),
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/back.png'),
            fit: BoxFit.cover,
            colorFilter: ColorFilter.mode(
              Colors.white.withOpacity(0.3),
              BlendMode.dstATop,
            ),
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Icon(
                Icons.check_circle,
                size: 80.0,
                color: Colors.lightGreen,
              ),
              SizedBox(height: 16.0),
              Text(
                'Order was successfully confirmed!',
                style: TextStyle(fontSize: 24.0),
              ),
              TextButton(
                child: Text(
                  'Rating / Feedback',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                    fontSize: 18.0,
                  ),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => RatingScreen()),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
