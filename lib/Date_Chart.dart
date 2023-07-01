/*
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class ToolRentScreen extends StatefulWidget {
  @override
  _ToolRentScreenState createState() => _ToolRentScreenState();
}

class _ToolRentScreenState extends State<ToolRentScreen> {
  String startDate = '';
  String endDate = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tool Rent'),
      ),
      body: Column(
        children: [
          SizedBox(height: 16.0),
          Text('Select Start Date: $startDate'),
          ElevatedButton(
            onPressed: () {
              showDatePicker(
                context: context,
                initialDate: DateTime.now(),
                firstDate: DateTime.now(),
                lastDate: DateTime(2030),
              ).then((value) {
                setState(() {
                  startDate = value.toString();
                });
              });
            },
            child: Text('Select Start Date'),
          ),
          SizedBox(height: 16.0),
          Text('Select End Date: $endDate'),
          ElevatedButton(
            onPressed: () {
              showDatePicker(
                context: context,
                initialDate: DateTime.now(),
                firstDate: DateTime.now(),
                lastDate: DateTime(2030),
              ).then((value) {
                setState(() {
                  endDate = value.toString();
                });
              });
            },
            child: Text('Select End Date'),
          ),
          SizedBox(height: 16.0),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => MyBankDetails(startDate: startDate, endDate: endDate)),
              );
            },
            child: Text('Next'),
          ),
        ],
      ),
    );
  }
}
*/
