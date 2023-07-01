import 'package:farmAnal/bank_details_screen.dart';
import 'package:flutter/material.dart';

class AddressDetails extends StatefulWidget {
  @override
  _AddressDetailsState createState() => _AddressDetailsState();
}

class _AddressDetailsState extends State<AddressDetails> {
  final _addressController = TextEditingController();

  @override
  void dispose() {
    _addressController.dispose();
    super.dispose();
  }

  void _confirmAddress() {
    String address = _addressController.text;
    if (address.isNotEmpty) {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => ConfirmationScreen(address: address)),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Address Details'),
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/back.png'),
            fit: BoxFit.cover,
            colorFilter: ColorFilter.mode(
              Colors.black.withOpacity(0.2),
              BlendMode.dstATop,
            ),
          ),
        ),
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Enter Delivery Address:',
              style: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 8.0),
            TextField(
              controller: _addressController,
              decoration: InputDecoration(
                hintText: 'Enter your address',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: _confirmAddress,
              child: Text('Confirm Address'),
            ),
          ],
        ),
      ),
    );
  }
}


class ConfirmationScreen extends StatelessWidget {
  final String address;

  ConfirmationScreen({required this.address});

  final TextEditingController startDateController = TextEditingController();
  final TextEditingController endDateController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Confirm Address'),
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/back.png"),
            fit: BoxFit.cover,
            colorFilter: ColorFilter.mode(Colors.white.withOpacity(0.1), BlendMode.dstATop),
          ),
        ),
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Delivery Address:',
              style: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 8.0),
            Text(
              address,
              style: TextStyle(fontSize: 16.0),
            ),
            SizedBox(height: 16.0),
            Text(
              'Booking Start Date:',
              style: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 8.0),
            TextFormField(
              controller: startDateController,
              keyboardType: TextInputType.datetime,
              decoration: InputDecoration(
                hintText: 'Select start date',
                border: OutlineInputBorder(),
              ),
              onTap: () async {
                final DateTime? startDate = await showDatePicker(
                  context: context,
                  initialDate: DateTime.now(),
                  firstDate: DateTime.now(),
                  lastDate: DateTime.now().add(Duration(days: 30)),
                );

                if (startDate != null) {
                  final TimeOfDay? startTime = await showTimePicker(
                    context: context,
                    initialTime: TimeOfDay.fromDateTime(DateTime.now()),
                  );

                  if (startTime != null) {
                    final DateTime startDateTime = DateTime(
                      startDate.year,
                      startDate.month,
                      startDate.day,
                      startTime.hour,
                      startTime.minute,
                    );
                    startDateController.text = startDateTime.toString();
                  }
                }
              },
            ),
            SizedBox(height: 16.0),
            Text(
              'Booking End Date:',
              style: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 8.0),
            TextFormField(
              controller: endDateController,
              keyboardType: TextInputType.datetime,
              decoration: InputDecoration(
                hintText: 'Select end date',
                border: OutlineInputBorder(),
              ),
              onTap: () async {
                final DateTime? endDate = await showDatePicker(
                  context: context,
                  initialDate: DateTime.now().add(Duration(days: 1)),
                  firstDate: DateTime.now().add(Duration(days: 1)),
                  lastDate: DateTime.now().add(Duration(days: 60)),
                );

                if (endDate != null) {
                  final TimeOfDay? endTime = await showTimePicker(
                    context: context,
                    initialTime: TimeOfDay.fromDateTime(DateTime.now()),
                  );

                  if (endTime != null) {
                    final DateTime endDateTime = DateTime(
                      endDate.year,
                      endDate.month,
                      endDate.day,
                      endTime.hour,
                      endTime.minute,
                    );
                    endDateController.text = endDateTime.toString();
                  }
                }
              },
            ),
            SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => BankDetailsScreen(address: address)),
                );
              },
              child: Text('Next'),
            ),
          ],
        ),
      ),
    );
  }
}


class BankDetailsScreen extends StatelessWidget {
  final String address;

  BankDetailsScreen({required this.address});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Bank Details'),
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/back.png'),
            fit: BoxFit.cover,
            colorFilter: ColorFilter.mode(
              Colors.white.withOpacity(0.3),
              BlendMode.dstATop,
            ),
          ),
        ),
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Delivery Address:',
              style: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 8.0),
            Text(
              address,
              style: TextStyle(fontSize: 16.0),
            ),
            SizedBox(height: 16.0),
            Text(
              'Enter Bank Details:',
              style: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 8.0),
            // Add your bank details form fields here
            SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => MyBankDetails()),
                );
              },
              child: Text('Next'),
            ),
          ],
        ),
      ),
    );
  }
}

