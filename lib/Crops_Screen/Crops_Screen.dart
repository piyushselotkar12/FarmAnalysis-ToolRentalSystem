import 'package:farmAnal/Crops_Screen/fruits.dart';
import 'package:farmAnal/Crops_Screen/rice.dart';
import 'package:farmAnal/Crops_Screen/soyabean.dart';
import 'package:farmAnal/Crops_Screen/vegetables.dart';
import 'package:farmAnal/Crops_Screen/wheat.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyCrops());
}

class Crop {
  final String name;
  final IconData icon;
  final Widget screen;

  Crop(this.name, this.icon, this.screen);
}

class MyCrops extends StatelessWidget {
  final List<Crop> crops = [
    Crop('Wheat', Icons.chat, MyWheat()),
    Crop('Rice', Icons.grain, MyRice()),
    Crop('Fruits', Icons.eco, MyFruits()),
    Crop('Soybean', Icons.filter_frames, MySoybean()),
    Crop('Vegetables', Icons.eco, MyVegetables()),
    Crop('Sugarcane', Icons.eco, MySugarcane()),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Crop Data',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Crop Data'),
        ),
        body: Container(
          padding: EdgeInsets.all(16.0),
          child: GridView.count(
            crossAxisCount: 2,
            children: crops.map((crop) {
              return GestureDetector(
                onTap: () {
                  navigateToCropScreen(context, crop.screen);
                },
                child: Card(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        crop.icon,
                        size: 60.0,
                      ),
                      SizedBox(height: 10.0),
                      Text(
                        crop.name,
                        style: TextStyle(
                          fontSize: 18.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              );
            }).toList(),
          ),
        ),
      ),
    );
  }

  void navigateToCropScreen(BuildContext context, Widget screen) {
    if (screen != null) {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => screen),
      );
    }
  }
}

class MyWheat extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Wheat'),
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/back.png'),
            fit: BoxFit.cover,
            colorFilter: ColorFilter.mode(
              Colors.white.withOpacity(0.2),
              BlendMode.dstATop,
            ),
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Wheat in Nagpur, Maharashtra',
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 10.0),
              Text(
                'Nagpur, located in the state of Maharashtra, is a significant wheat-producing region. Wheat is one of the staple crops grown in the region due to its high nutritional value and versatility in various food preparations.',
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 10.0),
              Text(
                'Key Features of Wheat:',
                style: TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 10.0),
              Text(
                '1. Staple Food Crop: Wheat is a staple crop globally and forms the basis of various food items like bread, pasta, and breakfast cereals.',
                textAlign: TextAlign.center,
              ),
              Text(
                '2. Nutritional Value: Wheat is a rich source of carbohydrates, dietary fiber, and essential nutrients like vitamins and minerals, providing energy and promoting overall health.',
                textAlign: TextAlign.center,
              ),
              Text(
                '3. Culinary Versatility: Wheat can be processed into different forms such as whole wheat flour, refined flour, semolina, and bran, allowing for a wide range of culinary applications.',
                textAlign: TextAlign.center,
              ),
              // Add more details about wheat cultivation in Nagpur if needed
            ],
          ),
        ),
      ),
    );
  }
}



class MyRice extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Rice'),
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/back.png'),
            fit: BoxFit.cover,
            colorFilter: ColorFilter.mode(
              Colors.white.withOpacity(0.2),
              BlendMode.dstATop,
            ),
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Rice in Nagpur, Maharashtra',
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 10.0),
              Text(
                'Nagpur, located in the state of Maharashtra, is known for its rice cultivation. The region offers favorable climatic conditions and fertile soil, making it suitable for rice farming.',
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 10.0),
              Text(
                'Rice Varieties:',
                style: TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 10.0),
              Text(
                '1. Basmati Rice: Basmati rice is a fragrant long-grain rice variety that is popular for its distinct aroma and taste. It is often used in biryanis and pilafs.',
                textAlign: TextAlign.center,
              ),
              Text(
                '2. Sona Masuri Rice: Sona Masuri is a medium-grain rice variety known for its lightweight and aromatic qualities. It is commonly used in everyday meals.',
                textAlign: TextAlign.center,
              ),
              Text(
                '3. Kolam Rice: Kolam rice is a short-grain rice variety mainly grown in the Nagpur region. It is ideal for preparing dishes like idli, dosa, and pongal.',
                textAlign: TextAlign.center,
              ),
              // Add more details about rice varieties in Nagpur if needed
            ],
          ),
        ),
      ),
    );
  }
}



class MyFruits extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Fruits'),
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/back.png'),
            fit: BoxFit.cover,
            colorFilter: ColorFilter.mode(
              Colors.white.withOpacity(0.2),
              BlendMode.dstATop,
            ),
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Fruits in Nagpur, Maharashtra',
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 10.0),
              Text(
                'Nagpur, located in the state of Maharashtra, is famous for its fruit production. The region\'s favorable climate and fertile soil contribute to the cultivation of a wide variety of delicious fruits.',
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 10.0),
              Text(
                'Popular Fruits:',
                style: TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 10.0),
              Text(
                '1. Oranges: Nagpur is renowned for its juicy and flavorful oranges. The Nagpur Orange, also known as Nagpuri Santra, is a popular variety that is exported worldwide.',
                textAlign: TextAlign.center,
              ),
              Text(
                '2. Mangoes: Maharashtra is known for its delectable mangoes, and Nagpur is no exception. The region cultivates various mango varieties, including Alphonso, Kesar, and Totapuri.',
                textAlign: TextAlign.center,
              ),
              Text(
                '3. Guavas: Nagpur is also known for its luscious guavas. The region\'s guavas are loved for their sweetness and unique flavor.',
                textAlign: TextAlign.center,
              ),
              // Add more details about other fruits in Nagpur if needed
            ],
          ),
        ),
      ),
    );
  }
}


class MySoybean extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Soybean'),
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/back.png'),
            fit: BoxFit.cover,
            colorFilter: ColorFilter.mode(
              Colors.white.withOpacity(0.2),
              BlendMode.dstATop,
            ),
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Soybean in Nagpur, Maharashtra',
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 10.0),
              Text(
                'Nagpur, located in the state of Maharashtra, is a major producer of soybean in the region. The crop is cultivated extensively due to its high protein content and versatility in various applications.',
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 10.0),
              Text(
                'Key Features of Soybean:',
                style: TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 10.0),
              Text(
                '1. Protein-Rich: Soybean is an excellent source of plant-based protein, making it a popular choice for vegetarian and vegan diets.',
                textAlign: TextAlign.center,
              ),
              Text(
                '2. Versatile Usage: Soybean can be processed into various forms, including soy milk, tofu, tempeh, and soy-based products like soy sauce and soybean oil.',
                textAlign: TextAlign.center,
              ),
              Text(
                '3. Nutritional Benefits: Besides protein, soybean is rich in essential nutrients such as fiber, vitamins, and minerals, which contribute to a healthy diet.',
                textAlign: TextAlign.center,
              ),
              // Add more details about soybean cultivation in Nagpur if needed
            ],
          ),
        ),
      ),
    );
  }
}



class MyVegetables extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Vegetables'),
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/back.png'),
            fit: BoxFit.cover,
            colorFilter: ColorFilter.mode(
              Colors.white.withOpacity(0.2),
              BlendMode.dstATop,
            ),
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Vegetables in Nagpur, Maharashtra',
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 10.0),
              Text(
                'Nagpur, located in the state of Maharashtra, is known for its diverse range of vegetables. The regions fertile soil and favorable climate provide an ideal environment for vegetable cultivation.',
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 10.0),
              Text(
                'Popular Vegetables:',
                style: TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 10.0),
              Text(
                '1. Tomatoes: Nagpur is known for its juicy and flavorful tomatoes. They are widely used in various culinary preparations.',
                textAlign: TextAlign.center,
              ),
              Text(
                '2. Brinjals (Eggplants): The region cultivates a variety of brinjals, including the popular purple and green varieties. Brinjals are a staple in many Indian dishes.',
                textAlign: TextAlign.center,
              ),
              Text(
                '3. Bhindi (Okra): Nagpur is also famous for its tender and fresh bhindi (okra). It is a versatile vegetable used in curries, stir-fries, and snacks.',
                textAlign: TextAlign.center,
              ),
              // Add more details about other vegetables in Nagpur if needed
            ],
          ),
        ),
      ),
    );
  }
}



class MySugarcane extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Sugarcane'),
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/back.png'),
            fit: BoxFit.cover,
            colorFilter: ColorFilter.mode(
              Colors.white.withOpacity(0.2),
              BlendMode.dstATop,
            ),
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Sugarcane in Nagpur, Maharashtra',
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 10.0),
              Text(
                'Nagpur, located in the state of Maharashtra, is one of the major sugarcane-producing regions in India. The regions fertile soil, suitable climate, and availability of water make it ideal for sugarcane cultivation.',
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 10.0),
              Text(
                'Key Features of Sugarcane in Nagpur:',
                style: TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 10.0),
              Text(
                '1. High Yield: Nagpurs sugarcane farms are known for their high yield and quality production. The region follows modern agricultural practices to ensure optimum growth and harvest.',
              textAlign: TextAlign.center,
              ),
              Text(
                '2. Varieties: Nagpur cultivates various sugarcane varieties, including CO 86032, CO 86033, and CO 86034. These varieties are selected for their suitability to the local climate and market demand.',
                textAlign: TextAlign.center,
              ),
              Text(
                '3. Sugar Mills: Nagpur has several sugar mills equipped with modern processing facilities. These mills play a crucial role in processing sugarcane into sugar and other by-products.',
                textAlign: TextAlign.center,
              ),
              // Add more details about sugarcane cultivation and industry in Nagpur if needed
            ],
          ),
        ),
      ),
    );
  }
}



