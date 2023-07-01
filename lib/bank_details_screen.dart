import 'package:farmAnal/QR.dart';
import 'package:farmAnal/order_confirmed.dart';
import 'package:flutter/material.dart';
//import 'package:farmAnal/tool_rental.dart';
class MyBankDetails extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return MyBankDetailsState();
  }
}

class MyBankDetailsState extends State<StatefulWidget>{

  String mode = "";
  void _submitForm() {
    // do something when form is submitted
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => MyOrder()),
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        backgroundColor: Colors.lightGreen,
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
              padding: const EdgeInsets.only(top: 10.0, bottom: 5.0),
              child: Text('Bank Details', style: TextStyle(fontWeight: FontWeight.w500, fontSize: 20),),
            ),
            Row(
              // mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 12.0),
                  child: Text('Name of Bank', style: TextStyle(fontSize: 15),),
                ),
                SizedBox(width: 10,),
                Expanded(
                  child: TextField(
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
                  child: Text('Branch Name', style: TextStyle(fontSize: 15),),
                ),
                SizedBox(width: 15,),
                Expanded(
                  child: TextField(
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
                  child: Text('Account No.', style: TextStyle(fontSize: 15),),
                ),
                SizedBox(width: 22,),
                Expanded(
                  child: TextField(
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
                  child: Text('IFSC Code', style: TextStyle(fontSize: 15),),
                ),
                SizedBox(width: 36,),
                Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.all(1.0),
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
                SizedBox(width: 5,),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20.0, bottom: 8.0),
              child: Text('Mode of Payment Accepted ?', style: TextStyle(fontWeight: FontWeight.w500, fontSize: 18)),
            ),

            ListTile(
              title: Text("UPI ID / QR Code"),
              leading: Radio(
                value: "UPI ID / QR Code",
                groupValue: mode,
                onChanged: (value) {
                  setState(() {
                    mode = value.toString();
                  });
                  if (mode == "UPI ID / QR Code") {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => MyQR()),

                    );
                  }
                },
              ),
            ),
            RadioListTile(
              title: Text("Credit / Debit Card"),
              value: "Credit / Debit Card",
              groupValue: mode,
              onChanged: (value){
                setState(() {
                  mode = value.toString();
                });
              },
            ),

            RadioListTile(
              title: Text("Net Banking"),
              value: "Net Banking",
              groupValue: mode,
              onChanged: (value){
                setState(() {
                  mode = value.toString();
                });
              },
            ),
            RadioListTile(
              title: Text("Cash"),
              value: "Cash",
              groupValue: mode,
              onChanged: (value){
                setState(() {
                  mode = value.toString();
                });
              },

            ),
            SizedBox(height: 20),
            ElevatedButton(onPressed: (){
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => MyOrder()));
            }, child: Text('Next')),
          ],

        ),

      ),

    );
  }

}