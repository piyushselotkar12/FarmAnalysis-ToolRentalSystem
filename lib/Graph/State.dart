/*
import 'package:flutter/material.dart';

class StateSelection extends StatefulWidget {
  @override
  _StateSelectionState createState() => _StateSelectionState();
}

class _StateSelectionState extends State<StateSelection> {
  String _selectedState = '';

  List<String> _states = [    'Andhra Pradesh',    'Arunachal Pradesh',    'Assam',    'Bihar',    'Chhattisgarh',    'Goa',    'Gujarat',    'Haryana',    'Himachal Pradesh',    'Jharkhand',    'Karnataka',    'Kerala',    'Madhya Pradesh',    'Maharashtra',    'Manipur',    'Meghalaya',    'Mizoram',    'Nagaland',    'Odisha',    'Punjab',    'Rajasthan',    'Sikkim',    'Tamil Nadu',    'Telangana',    'Tripura',    'Uttar Pradesh',    'Uttarakhand',    'West Bengal'  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('State Selection'),
      ),
      body: Container(
        padding: EdgeInsets.all(16.0),
    child: Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: <Widget>[
    Text(
    'Select State',
    style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
    ),
    SizedBox(height: 10.0),
    DropdownButtonFormField<String>(
    value: _selectedState,
    onChanged: (value) {
    setState(() {
    _selectedState = value!;
    });
    },
    items: _states
        .map((state) => DropdownMenuItem(
    child: Text(state),
    value: state,
    ))
        .toList(),
    decoration: InputDecoration(
    border: OutlineInputBorder(),
    hintText: 'Select state',
    ),
    ),
    SizedBox(height: 10.0),
    ElevatedButton(
    onPressed: () {
    // Add your submit button functionality here
    print('Selected state: $_selectedState');
    },
    child: Text('Submit'),
    ),
    ],
    ),
      )
    );
  }
}
*/
/*
import 'package:flutter/material.dart';
class StateSelection extends StatefulWidget {
  final List<Crop> crops;

  const StateSelection({Key? key, required this.crops}) : super(key: key);

  @override
  _StateSelectionState createState() => _StateSelectionState();
}

class _StateSelectionState extends State<StateSelection> {
  String _selectedState = '';

  List<String> _states = [
    'Andhra Pradesh',
    'Arunachal Pradesh',
    'Assam',
    'Bihar',
    'Chhattisgarh',
    'Goa',
    'Gujarat',
    'Haryana',
    'Himachal Pradesh',
    'Jharkhand',
    'Karnataka',
    'Kerala',
    'Madhya Pradesh',
    'Maharashtra',
    'Manipur',
    'Meghalaya',
    'Mizoram',
    'Nagaland',
    'Odisha',
    'Punjab',
    'Rajasthan',
    'Sikkim',
    'Tamil Nadu',
    'Telangana',
    'Tripura',
    'Uttar Pradesh',
    'Uttarakhand',
    'West Bengal'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('State Selection'),
      ),
      body: Container(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              'Select State',
              style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10.0),
            DropdownButtonFormField<String>(
              value: _selectedState,
              onChanged: (value) {
                setState(() {
                  _selectedState = value!;
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => CropDetails(
                        state: _selectedState,
                        crops: widget.crops,
                      ),
                    ),
                  );
                });
              },
              items: _states
                  .map((state) => DropdownMenuItem(
                child: Text(state),
                value: state,
              ))
                  .toList(),
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Select state',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
*/