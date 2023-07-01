import 'package:farmAnal/EnterPageSigninLogin.dart';
//import 'package:farmAnal/Crops_Screen/analysis_screen.dart';
import 'package:farmAnal/contact_us.dart';
import 'package:farmAnal/location_screen.dart';
import 'package:farmAnal/new_account_screen.dart';
import 'package:farmAnal/phone_screen.dart';
import 'package:farmAnal/tool_location.dart';
import 'package:farmAnal/tool_rental.dart';
import 'package:flutter/material.dart';

import 'login_screen.dart';

class WelcomeScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          width: double.infinity,
          height: double.infinity,
          alignment: Alignment.center,
          decoration: BoxDecoration(
              gradient: LinearGradient(
                //color: Colors.lightGreen,
                colors: [Colors.lightGreen, Color(0xfffff1eb)],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              )
          ),
          //colors: [Colors.lightGreen, Color(0xfffff1eb)],
          child: Container(
            height: 430,
            width: 315,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(40),
              color: Colors.white,

            ),
            child: Column(
              // mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(height: 10,),
                Container(
                  child: Image.asset('assets/images/go.png.png'),
                  width: 100,
                  height: 100,

                ),
                SizedBox(height: 40,),
                ElevatedButton(onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => NagpurMapScreen()));
                }, child: Padding(
                  padding: const EdgeInsets.only(left: 25, right: 25, top: 20, bottom: 20),
                  child: Text('FOR ANALYSIS ', style: TextStyle(color: Colors.black, fontWeight: FontWeight.w600)),
                ),
                  style: ElevatedButton.styleFrom(
                      primary: Color(0xffD9D9D9),
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30))
                  ),),

                SizedBox(height: 42,),
                ElevatedButton(onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => MyMap()));
                }, child: Padding(
                  padding: const EdgeInsets.only(left: 25, right: 25, top: 20, bottom: 20),
                  child: Text('FOR TOOLS RENTAL', style: TextStyle(color: Colors.black, fontWeight: FontWeight.w600)),
                ),
                  style: ElevatedButton.styleFrom(
                      primary: Color(0xffD9D9D9),
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30))
                  ),),

                SizedBox(height: 50,),
                ElevatedButton(onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => MyContactUs()));
                }, child: Padding(
                  padding: const EdgeInsets.only(left: 25, right: 25, top: 20, bottom: 20),
                  child: Text('Help', style: TextStyle(color: Colors.black, fontWeight: FontWeight.w600)),
                ),
                  style: ElevatedButton.styleFrom(
                      primary: Color(0xffD9D9D9),
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30))
                  ),),
              ],
            ),
          )
      ),
    );
  }
}
