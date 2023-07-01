import 'package:farmAnal/bank_details_screen.dart';
import 'package:farmAnal/login_screen.dart';
import 'package:farmAnal/tool_rental.dart';
import 'package:flutter/material.dart';
import 'package:farmAnal/phone_screen.dart';
//import 'package:farmAnal/next_details_screen.dart';
import 'package:farmAnal/bank_details_screen.dart';
import 'package:flutter/material.dart';
void main() async{
  WidgetsFlutterBinding.ensureInitialized();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyNewAccount(),
    );
  }
}
class MyNewAccount extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return MyNewAccountState();
  }
}


class MyNewAccountState extends State<StatefulWidget>{

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: Text('Create New Account', style: TextStyle(fontWeight: FontWeight.w500, fontSize: 20),),
      ),
      body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.lightGreen, Color(0xfffff1eb)],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              // stops: [0.0, 0.9]
            )
        ),
        child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 30.0, bottom: 30.0),
                child: Text('Client Details', style: TextStyle(fontWeight: FontWeight.w500, fontSize: 20),),
              ),
              Row(
                // mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 12.0),
                    child: Text('Full Name:', style: TextStyle(fontSize: 17),),
                  ),
                  SizedBox(width: 10,),
                  Expanded(
                    child: TextField(
                      style: TextStyle(fontSize: 18),
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.all(1.0),
                        border: OutlineInputBorder(),
                      ),
                    ),
                  ),
                  SizedBox(width: 5,),
                ],
              ),
              SizedBox(height: 4,),
              //SizedBox(height: 70,),


              SizedBox(height: 10,),
              Row(
                // mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 10.0),
                    child: Text('Contact No:', style: TextStyle(fontSize: 17),),
                  ),
                  SizedBox(width: 10,),
                  Expanded(
                    child: TextField(
                      style: TextStyle(fontSize: 18),
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.all(1.0),
                        border: OutlineInputBorder(),
                      ),
                    ),
                  ),
                  SizedBox(width: 5,),
                ],
              ),
              SizedBox(height: 10,),
              Row(
                // mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 12.0),
                    child: Text('Address:', style: TextStyle(fontSize: 17),),
                  ),
                  SizedBox(width: 28,),
                  Expanded(
                    child: TextField(
                      style: TextStyle(fontSize: 18),
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.all(1.0),
                        border: OutlineInputBorder(),
                      ),
                    ),
                  ),
                  SizedBox(width: 5,),
                ],
              ),
              SizedBox(height: 10,),
              Row(
                // mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 12.0),
                    child: Text('City:', style: TextStyle(fontSize: 17),),
                  ),
                  SizedBox(width: 25,),
                  Container(
                    width:120,
                    child: TextField(
                      style: TextStyle(fontSize: 18),
                      keyboardType: TextInputType.name,
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.all(1.0),
                        border: OutlineInputBorder(),
                      ),
                    ),
                  ),
                  SizedBox(width: 13,),
                  Padding(
                    padding: const EdgeInsets.only(left: 11.0),
                    child: Text('Age:', style: TextStyle(fontSize: 12),),
                  ),

                  SizedBox(width: 15,),
                  Container(
                    width: 60,
                    child: TextField(
                      style: TextStyle(fontSize: 18),
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.all(1.0),
                        border: OutlineInputBorder(),
                      ),
                    ),
                  ),
                  SizedBox(width: 5,),
                ],
              ),
              //Padding(
              //padding: const EdgeInsets.only(top: 40.0, bottom: 30.0),
              //child: Text('Tool Details', style: TextStyle(fontWeight: FontWeight.w500, fontSize: 20)),
              //),
              SizedBox(height: 10,),
              Row(
                // mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 12.0),
                    child: Text('Email:', style: TextStyle(fontSize: 17),),

                  ),
                  SizedBox(width: 12,),
                  Expanded(
                    child: TextField(
                      style: TextStyle(fontSize: 18),
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.all(1.0),
                        border: OutlineInputBorder(),
                      ),
                    ),
                  ),
                  SizedBox(width: 5,),
                ],
              ),
              SizedBox(height: 10,),
              Row(
                // mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 10.0),
                    child: Text('Whatsapp No:', style: TextStyle(fontSize: 17),),
                  ),
                  SizedBox(width: 12,),
                  Expanded(
                    child: TextField(
                      style: TextStyle(fontSize: 18),
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.all(1.0),
                        border: OutlineInputBorder(),
                      ),
                    ),
                  ),
                  SizedBox(width: 5,),
                ],
              ),
              SizedBox(height: 10,),
              Row(
                // mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 12.0),
                    child: Text('Pin Code:', style: TextStyle(fontSize: 17),),
                  ),
                  SizedBox(width: 25,),
                  Container(
                    width:120,
                    child: TextField(
                      style: TextStyle(fontSize: 18),
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.all(1.0),
                        border: OutlineInputBorder(),
                      ),
                    ),
                  ),

                ],
              ),
              SizedBox(height: 25,),
              ElevatedButton(onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => MyPhone()));
              },
                  child: Text('Next')),
            ]
        ),
      ),



    );
  }

}