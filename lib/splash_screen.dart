import 'dart:async';

import 'package:farmAnal/EnterPageSigninLogin.dart';
import 'package:farmAnal/welcome_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SplashScreen extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => SplashScreenState();

}

class SplashScreenState extends State<StatefulWidget>{

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        floatingActionButton: Container(
          height: 50,
          margin: const EdgeInsets.all(20),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: ElevatedButton(onPressed: (){
              Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => LoginSignUpScreen()));
            },style: ElevatedButton.styleFrom(
              primary: Color(0xff142A45),
            ),
              child: Padding(
                padding: const EdgeInsets.only(left: 70, right: 70, top:12, bottom: 12),
                child: Text('Get Started', style: TextStyle(color: Colors.white, letterSpacing: .5),),
              ),

            ),
          ),
        ),
        body: Center(
          child: Container(
            height: double.infinity,
            width: double.infinity,
            //color: Colors.lightGreen,
            decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [Colors.lightGreen, Color(0xfffff1eb)],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                )
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  child: Image.asset('assets/images/logo.png'),
                  width: 200,
                  height: 200,
                ),
                SizedBox(height: 5,),
                Center(
                  child: Text('Farm Analysis', style: TextStyle(
                      fontSize: 50,
                      fontWeight: FontWeight.bold,
                      color: Colors.black)),
                ),
                Center(
                  child: Text('& Tool Rental', style: TextStyle(
                    fontSize: 50,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,)),
                ),
                SizedBox(height: 10),

                // Container(height: 200),
              ],
            ),
          ),
        )
    );
  }
}