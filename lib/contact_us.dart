import 'package:farmAnal/about_us.dart';
import 'package:flutter/material.dart';

class MyContactUs extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyContactUsState();
  }
}

class MyContactUsState extends State<StatefulWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightGreen,
        title: Padding(
          padding: const EdgeInsets.only(left: 15),
          child: Text(
            'Contact Us',
            style: TextStyle(fontSize: 25, color: Colors.black),
          ),
        ),
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: Column(
          children: [
            SizedBox(
              height: 25,
            ),
            Container(
              child: Image.asset('assets/images/operator.png'),
              width: 120,
              height: 120,
            ),

            SizedBox(
              height: 55,
            ),
            Container(
                height: 50,
                width: double.infinity,
                color: Colors.green.shade100,
                child: InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => MyAboutUs()));
                  },
                  child: Row(
                    children: [
                      SizedBox(
                        width: 30,
                      ),
                      Icon(Icons.info, size: 30,),
                      SizedBox(
                        width: 40,
                      ),
                      Text(
                        'About Us',
                        style: TextStyle(fontSize: 20),
                      )
                    ],
                  ),
                )),

            SizedBox(
              height: 40,
            ),
            Container(
                height: 50,
                width: double.infinity,
                color: Colors.green.shade100,
                child: Row(
                  children: [
                    SizedBox(
                      width: 30,
                    ),
                    Icon(
                      Icons.email,
                      size: 30,
                    ),
                    SizedBox(
                      width: 40,
                    ),
                    Text(
                      'Email Us',
                      style: TextStyle(fontSize: 20),
                    )
                  ],
                )),
          ],
        ),
      ),
    );
  }
}
/*
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MyContactUs extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return MyContactUsState();
  }
}

class MyContactUsState extends State<StatefulWidget>{

  @override
  Widget build(BuildContext context) {

    return Scaffold(

      appBar: AppBar(
        backgroundColor: Colors.lightGreen,
        title: Padding(
          padding: const EdgeInsets.only(left: 15),
          child: Text('Contact Us', style: TextStyle(fontSize: 25, color: Colors.black),),
        ),
      ),
      body:Container(
        width: double.infinity,
        height: double.infinity,

        child: Column(
          children: [
            SizedBox(height: 25,),
            Container(
              child: Image.asset('assets/images/operator.png'),
              width: 120,
              height: 120,
            ),
            SizedBox(height: 55,),
            Container(
                height: 50,
                width: double.infinity,
                color: Colors.green.shade100,
                child: Row(
                  children: [
                    SizedBox(width: 30,),
                    FaIcon(FontAwesomeIcons.facebook, size: 30,),
                    SizedBox(width: 40,),
                    Text('Ask Us', style: TextStyle(fontSize: 20),)
                  ],
                )
            ),
            SizedBox(height: 40,),
            Container(
                height: 50,
                width: double.infinity,
                color: Colors.green.shade100,
                child: Row(
                  children: [
                    SizedBox(width: 30,),
                    FaIcon(FontAwesomeIcons.phone, size: 30,),
                    SizedBox(width: 40,),
                    Text('Call Us', style: TextStyle(fontSize: 20),)
                  ],
                )
            ),
            SizedBox(height: 40,),
            Container(
                height: 50,
                width: double.infinity,
                color: Colors.green.shade100,
                child: Row(
                  children: [
                    SizedBox(width: 30,),
                    Icon(Icons.email, size: 30,),
                    SizedBox(width: 40,),
                    Text('Email Us', style: TextStyle(fontSize: 20),)
                  ],
                )
            ),
            SizedBox(height: 40,),
            Container(
                height: 50,
                width: double.infinity,
                color: Colors.green.shade100,
                child: Row(
                  children: [
                    SizedBox(width: 30,),
                    Icon(Icons.email, size: 30,),
                    SizedBox(width: 40,),
                    Text('About Us', style: TextStyle(fontSize: 20),)
                  ],
                )
            ),
          ],
        ),
      ),
    );
  }

}
*/
