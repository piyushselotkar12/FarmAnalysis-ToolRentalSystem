import 'package:flutter/material.dart';

class MyForgetScreen extends StatefulWidget {
  @override
  _MyForgetScreenState createState() => _MyForgetScreenState();
}

class _MyForgetScreenState extends State<MyForgetScreen> {
  TextEditingController newPasswordController = TextEditingController();
  TextEditingController confirmPasswordController = TextEditingController();
  bool newPasswordVisible = false;
  bool confirmPasswordVisible = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Forgot Password'),
      ),
      body: Container(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            TextField(
              controller: newPasswordController,
              obscureText: !newPasswordVisible,
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.lock),
                prefixIconColor: Colors.black,
                border: OutlineInputBorder(),
                labelText: 'New Password',
                suffixIcon: IconButton(
                  icon: Icon(newPasswordVisible ? Icons.visibility : Icons.visibility_off),
                  onPressed: () {
                    setState(() {
                      newPasswordVisible = !newPasswordVisible;
                    });
                  },
                ),
              ),
            ),
            SizedBox(height: 10),
            TextField(
              controller: confirmPasswordController,
              obscureText: !confirmPasswordVisible,
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.lock),
                prefixIconColor: Colors.black,
                border: OutlineInputBorder(),
                labelText: 'Confirm Password',
                suffixIcon: IconButton(
                  icon: Icon(confirmPasswordVisible ? Icons.visibility : Icons.visibility_off),
                  onPressed: () {
                    setState(() {
                      confirmPasswordVisible = !confirmPasswordVisible;
                    });
                  },
                ),
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                String newPassword = newPasswordController.text.trim();
                String confirmPassword = confirmPasswordController.text.trim();

                // Perform password validation and update operations here

                // Display a success message or handle errors

                // Navigate back to the login screen
                Navigator.pop(context);
              },
              child: Text('Submit'),
            ),
          ],
        ),
      ),
    );
  }
}
