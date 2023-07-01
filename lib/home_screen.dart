import 'package:flutter/material.dart';

class MyHome extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: ListView(
          children: [

          ],
        ),
      ),

      body: Container(
        child: Column(
          children: [
            Text('SERVICES',style: TextStyle(fontSize: 25),)
          ],
        ),
      ),
    );
  }

}