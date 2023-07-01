import 'package:farmAnal/Privacy.dart';
import 'package:farmAnal/TermsAndCondition.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MyAboutUs extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return MyAboutUsState();
  }
}

class MyAboutUsState extends State<StatefulWidget>{

  @override
  Widget build(BuildContext context) {

    return Scaffold(

        appBar: AppBar(
          backgroundColor: Colors.lightGreen,
          title: Padding(
            padding: const EdgeInsets.only(left: 15),
            child: Text('About Us', style: TextStyle(fontSize: 25, color: Colors.black),),
          ),
        ),
        body:Container(
          width: double.infinity,
          height: double.infinity,

          child: Column(
            children: [
              Container(
                child: Image.asset('assets/images/logo.png'),
                width: 160,
                height: 160,
              ),
              SizedBox(height: 55,),
              Container(
                  height: 50,
                  width: double.infinity,
                  color: Colors.blue.shade100,
                  child: InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => TermsAndConditionsScreen()),
                      );
                    },
                    child: Row(
                      children: [
                        SizedBox(width: 30,),
                        Icon(Icons.file_copy, size: 30,),
                        SizedBox(width: 40,),
                        Text('Terms and Conditions', style: TextStyle(fontSize: 20),)
                      ],
                    ),
                  )
              ),
              SizedBox(height: 40,),
              Container(
                  height: 50,
                  width: double.infinity,
                  color: Colors.blue.shade100,
                  child: InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => PrivacyPolicy()),
                      );
                    },
                    child: Row(
                      children: [
                        SizedBox(width: 30,),
                        FaIcon(FontAwesomeIcons.lock, size: 30,),
                        SizedBox(width: 40,),
                        Text('Privacy Policy', style: TextStyle(fontSize: 20),)
                      ],
                    ),
                  )
              ),
              SizedBox(height: 40,),
            ],
          ),
        )
    );
  }

}