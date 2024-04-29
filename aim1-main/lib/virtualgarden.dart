import 'package:flutter/material.dart';

class Virtualgarden extends StatelessWidget {
  const Virtualgarden({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Virtual Garden",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Container(
            child: Divider(
              thickness: 0,
              color: Colors.black,
            ),
          ),
          Container(
              // color: Colors.amber,
              child: SizedBox(
                width: 200,
                height: 150,
              )),
          SizedBox(
            height: 5,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                // color: Colors.amber,
                width: 300,
                height: 350,
                child: Column(
                  children: [
                    Row(
                      children: [
                        Image.asset(
                          "assets/img/sunflower.png",
                          width: 140,
                        ),
                        Image.asset(
                          "assets/img/greentree.png",
                          width: 150,
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        SizedBox(
                          width: 50,
                        ),
                        Text(
                          "10",
                          style: TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                              color: Colors.blueGrey),
                        ),
                        SizedBox(
                          width: 130,
                        ),
                        Text(
                          "9",
                          style: TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                              color: Colors.blueGrey),
                        ),
                      ],
                    ),
                      SizedBox(
                          height: 5,
                        ),
                    Row(
                      children: [
                        Image.asset(
                          "assets/img/yellowtree.png",
                          width: 140,
                        ),
                        Image.asset(
                          "assets/img/sakura.png",
                          width: 150,
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        SizedBox(
                          width: 60,
                        ),
                        Text(
                          "3",
                          style: TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                              color: Colors.blueGrey),
                        ),
                        SizedBox(
                          width: 140,
                        ),
                        Text(
                          "7",
                          style: TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                              color: Colors.blueGrey),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
