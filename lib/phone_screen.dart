import 'package:farmAnal/verify_screen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
main(){
  runApp(FlutterApp());
}

class FlutterApp extends StatelessWidget{

  @ override
  Widget build(BuildContext context){
    return MaterialApp(
      title: 'FlutterApp',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyPhone(),
    );
  }
}

class MyPhone extends StatefulWidget {
  const MyPhone({Key? key}) : super(key: key);

  static String verify = "";
  @override
  State<MyPhone> createState() => _MyPhoneState();
}

class _MyPhoneState extends State<MyPhone> {
  TextEditingController countryController = TextEditingController();
  var phone="";
  @override
  void initState() {
    // TODO: implement initState
    countryController.text = "+91";
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
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

        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              child: Image.asset('assets/images/verification.png'),
              width: 200,
              height: 200,
            ),


            //child: Padding(
            // padding: const EdgeInsets.only(left: 70, right: 70, top:12, bottom: 12),
            // child: Text('Next', style: TextStyle(color: Colors.white, letterSpacing: .5),),
            //  ),
            //),
            SizedBox(
                height: 11
            ),
            SizedBox(
              height: 25,
            ),
            Text(
              "Phone Verification",
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "Enter your phone number",
              style: TextStyle(
                fontSize: 18,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              height: 55,
              decoration: BoxDecoration(
                  border: Border.all(width: 1, color: Colors.grey),
                  borderRadius: BorderRadius.circular(10)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    width: 10,
                  ),
                  SizedBox(
                    width: 40,
                    child: TextField(
                      controller: countryController,
                      keyboardType: TextInputType.phone,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Color(0xff142A45),
                                width: 2)),
                      ),
                    ),
                  ),
                  Text(
                    "|",
                    style: TextStyle(fontSize: 33, color: Colors.grey),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  SizedBox(
                      width: 300,
                      child: TextField(
                        onChanged: (value) {
                          phone = value;
                        },
                        keyboardType: TextInputType.phone,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: "Phone",
                          focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Color(0xff142A45),
                                  width: 2)),
                        ),
                      ))
                ],
              ),

            ),
            SizedBox(height: 30),
            Container(
                alignment: Alignment.bottomCenter,
                child: SizedBox(
                    width: 250,
                    height: 45,
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            primary: Color(0xff142A45),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10)
                            )
                        ),
                        onPressed: () async{
                          await FirebaseAuth.instance.verifyPhoneNumber(
                            phoneNumber: '${countryController.text + phone}',
                            verificationCompleted: (PhoneAuthCredential credential) {},
                            verificationFailed: (FirebaseAuthException e) {},
                            codeSent: (String verificationId, int? resendToken) {
                              Navigator.push(context, MaterialPageRoute(builder: (context) => MyVerify()));
                            },
                            codeAutoRetrievalTimeout: (String verificationId) {},
                          );
                          //Navigator.push(context, MaterialPageRoute(builder: (context) => MyVerify()));
                        },
                        child: Text("Send the code")
                    )
                )
            )


          ],


        ),

      ),
    );
  }
}