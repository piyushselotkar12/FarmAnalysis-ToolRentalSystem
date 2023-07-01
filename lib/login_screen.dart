import 'package:farmAnal/Forget_Password.dart';
import 'package:flutter/material.dart';
import 'welcome_screen.dart';
import 'new_account_screen.dart';

class MyLoginScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyLoginScreenState();
  }
}

class MyLoginScreenState extends State<MyLoginScreen> {
  TextEditingController phoneController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  bool passwordVisible = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        body: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 70),
              Container(
                child: Image.asset('assets/images/verify.png'),
                width: 200,
                height: 200,
              ),
              SizedBox(height: 10),
              Center(child: Text('Welcome Back', style: TextStyle(fontSize: 26, fontWeight: FontWeight.w500))),
              SizedBox(height: 10),
              Container(
                width: double.infinity,
                child: Center(child: Text("We're happy to see you again. To use your", style: TextStyle(fontSize: 15))),
              ),
              Container(
                width: double.infinity,
                child: Center(child: Text("account you should login first.", style: TextStyle(fontSize: 15))),
              ),
              SizedBox(height: 30),
              Container(
                padding: const EdgeInsets.all(10),
                child: TextField(
                  controller: phoneController,
                  keyboardType: TextInputType.number,
                  decoration: const InputDecoration(
                    prefixIcon: Icon(Icons.phone),
                    prefixIconColor: Colors.black,
                    border: OutlineInputBorder(),
                    labelText: 'Phone Number',
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
                child: TextField(
                  obscureText: !passwordVisible,
                  controller: passwordController,
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.lock),
                    prefixIconColor: Colors.black,
                    border: OutlineInputBorder(),
                    labelText: 'Password',
                    suffixIcon: IconButton(
                      icon: Icon(passwordVisible ? Icons.visibility : Icons.visibility_off),
                      onPressed: () {
                        setState(() {
                          passwordVisible = !passwordVisible;
                        });
                      },
                    ),
                  ),
                ),
              ),
              TextButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => MyForgetScreen()));
                },
                child: const Text('Forgot Password'),
              ),
              ElevatedButton(
                child: const Text('Login'),
                onPressed: () {
                  String phoneNumber = phoneController.text.trim();
                  String password = passwordController.text.trim();

                  if (phoneNumber.isEmpty || password.isEmpty) {
                    showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return AlertDialog(
                          title: Text('Error'),
                          content: Text('Please enter both phone number and password.'),
                          actions: [
                            TextButton(
                              child: Text('OK'),
                              onPressed: () {
                                Navigator.of(context).pop();
                              },
                            ),
                          ],
                        );
                      },
                    );
                  } else {
                    print(phoneNumber);
                    print(password);

                    // Perform login operations here

                    // Navigate to the WelcomeScreen
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => WelcomeScreen()),
                    );
                  }
                },
              ),
              Row(
                children: [
                  const Text('Does not have an account?'),


                  TextButton(
                    child: const Text('Sign up'),
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => MyNewAccount()));
                    },
                  )
                ],
                mainAxisAlignment: MainAxisAlignment.center,
              ),
            ],

          ),

        )


    );
  }

}