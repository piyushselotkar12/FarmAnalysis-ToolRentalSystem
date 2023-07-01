import 'package:farmAnal/welcome_screen.dart';
import 'package:flutter/material.dart';

class RatingScreen extends StatefulWidget {
  @override
  _RatingScreenState createState() => _RatingScreenState();
}

class _RatingScreenState extends State<RatingScreen> {
  double _rating = 0.0;
  String _feedback = '';

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/images/back.png'),
          fit: BoxFit.cover,
        ),
      ),
      child: Scaffold(
        appBar: AppBar(
          title: Text('Rating and Feedback'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Please rate our app:',
                style: TextStyle(fontSize: 20.0),
              ),
              SizedBox(height: 18.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(
                    icon: Icon(Icons.star),
                    color: _rating >= 1 ? Colors.yellow : Colors.grey,
                    onPressed: () {
                      setState(() {
                        _rating = 1.0;
                      });
                    },
                  ),
                  IconButton(
                    icon: Icon(Icons.star),
                    color: _rating >= 2 ? Colors.yellow : Colors.grey,
                    onPressed: () {
                      setState(() {
                        _rating = 2.0;
                      });
                    },
                  ),
                  IconButton(
                    icon: Icon(Icons.star),
                    color: _rating >= 3 ? Colors.yellow : Colors.grey,
                    onPressed: () {
                      setState(() {
                        _rating = 3.0;
                      });
                    },
                  ),
                  IconButton(
                    icon: Icon(Icons.star),
                    color: _rating >= 4 ? Colors.yellow : Colors.grey,
                    onPressed: () {
                      setState(() {
                        _rating = 4.0;
                      });
                    },
                  ),
                  IconButton(
                    icon: Icon(Icons.star),
                    color: _rating >= 5 ? Colors.yellow : Colors.grey,
                    onPressed: () {
                      setState(() {
                        _rating = 5.0;
                      });
                    },
                  ),
                ],
              ),
              SizedBox(height: 18.0),
              Text(
                'Please provide your feedback:',
                style: TextStyle(fontSize: 20.0),
              ),
              SizedBox(height: 19.0),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: TextFormField(
                  maxLines: 5,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'Enter your feedback here',
                  ),
                  onChanged: (value) {
                    setState(() {
                      _feedback = value;
                    });
                  },
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  // Send rating and feedback to server

                  // Navigate to MyHome page
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => WelcomeScreen()),
                  );
                },
                child: Text('Submit'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
