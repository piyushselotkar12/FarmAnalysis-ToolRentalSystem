/*
import 'package:farmAnal/bank_details_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
//import 'next_screen.dart';

class NagpurMapScreen extends StatefulWidget {
  @override
  _NagpurMapScreenState createState() => _NagpurMapScreenState();
}

class _NagpurMapScreenState extends State<NagpurMapScreen> {
  static final CameraPosition _nagpurLocation = CameraPosition(
    target: LatLng(21.146633, 79.088860),
    zoom: 14.0,
  );

  Set<Marker> _markers = {};

  @override
  void initState() {
    super.initState();
    _markers.add(
      Marker(
        markerId: MarkerId('nagpur'),
        position: LatLng(21.146633, 79.088860),
        infoWindow: InfoWindow(
          title: 'Nagpur',
        ),
      ),
    );
  }

  void _navigateToNextScreen() {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => MyBankDetails()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Nagpur Map'),
      ),
      body: GoogleMap(
        initialCameraPosition: _nagpurLocation,
        markers: _markers,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _navigateToNextScreen,
        child: Icon(Icons.arrow_forward),
      ),
    );
  }
}
*/

/*
import 'package:farmAnal/analysis_screen.dart';
import 'package:farmAnal/bank_details_screen.dart';
import 'package:farmAnal/order_confirmed.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class NagpurMapScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            'assets/images/Map.png',
            fit: BoxFit.cover,
            width: double.infinity,
            height: double.infinity,
          ),
          GoogleMap(
            initialCameraPosition: CameraPosition(
              target: LatLng(21.1458, 79.0882), // Coordinates for Nagpur
              zoom: 12,
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => MyAnal()),
          );
        },
        child: Icon(Icons.arrow_forward),
      ),
    );
  }
}
*/
//import 'package:farmAnal/Crops_Screen/NavigationBar.dart';
//import 'package:farmAnal/Crops_Screen/analysis_screen.dart';
import 'package:farmAnal/analysis_screen.dart';
import 'package:flutter/material.dart';

void main() => runApp(NagpurMapScreen());

class NagpurMapScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Map',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Column(
          children: [
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/images/Map.png'),
                    fit: BoxFit.cover,
                  ),
                ),
                child: Center(
                  child: Text(
                    '',
                    style: TextStyle(
                      fontSize: 32.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => MyAnal()),
                  );
                },
                child: Text('Next'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}







