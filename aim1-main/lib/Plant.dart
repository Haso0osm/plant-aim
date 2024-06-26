import 'package:flutter/material.dart';
import 'colors.dart';
import 'package:flutter_svg/flutter_svg.dart';


class Plant extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: mobileBackgroundColor,
          title: SvgPicture.asset(
            "assets/img/logo.svg",
            height: 25,
            color: primaryColor,
          ),
          centerTitle: true,
        ),
        
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.fromLTRB(0, 10.0, 10.0, 0),
                child: Text(
                  'Hi Sara,',
                  style: TextStyle(
                      fontSize: 19.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(30.0, 0, 10.0, 0),
                child: Text(
                  'You can buy plants for your own virtual garden by paying using your points only!',
                  style: TextStyle(fontSize: 15.0, color: Colors.black54),
                ),
              ),
              PlantCard(
                plantName: 'greentree',
                plantCost: 1020,
                imagePath:
                    'assets/img/greentree.png', // Replace with your asset path
              ),

              PlantCard(
                plantName: 'sakura',
                plantCost: 3000,
                imagePath:
                    'assets/img/sakura.png', // Replace with your asset path
              ),

              PlantCard(
                plantName: 'yellowtree',
                plantCost: 900,
                imagePath:
                    'assets/img/yellowtree.png', // Replace with your asset path
              ),

                PlantCard(
                plantName: 'sunflower',
                plantCost: 700,
                imagePath:
                    'assets/img/sunflower.png', // Replace with your asset path
              ),
            ],
          ),
        ));
  }
}

class PlantCard extends StatelessWidget {
  final String plantName;
  final int plantCost;
  final String imagePath;

  const PlantCard({
    Key? key,
    required this.plantName,
    required this.plantCost,
    required this.imagePath,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(23.0),
      child: Column(
        children: <Widget>[
          ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image.asset(imagePath), // Use your local asset image
          ),
          Padding(
            padding: EdgeInsets.all(3.0),
            child: Text(
              plantName,
              style: TextStyle(fontSize: 22.0, fontWeight: FontWeight.bold),
            ),
          ),

          Text(
            'This will cost you $plantCost 🪙',
            style: TextStyle(fontSize: 17.0, color: Colors.black54),
          ),
          SizedBox(height: 10),
          ElevatedButton(
            onPressed: () {},
            child: Text(
              "Plant Now!",
              style: TextStyle(fontSize: 15, color: Colors.white),
            ),
            style: ElevatedButton.styleFrom(
              backgroundColor: Color(0xFF8228BF),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(11),
              ),
              padding: EdgeInsets.symmetric(
                vertical: 8,
                horizontal: 80,
              ),
            ),
          ),
          SizedBox(height: 10),
          //onPressed: () {
          // Add your planting logic here
          //  },
          //  child: Text('Plant Now!'),
          //),
        ],
      ),
    );
  }
}
