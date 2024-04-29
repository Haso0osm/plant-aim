// ignore_for_file: prefer_const_constructors

import 'colors.dart';
// ignore: unused_import
import 'forYou.dart';
import 'selectCategor.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
// ignore: unused_import
import 'package:flutter_svg/flutter_svg.dart';


class ForYou extends StatelessWidget {
  const ForYou({super.key});

  @override
  Widget build(BuildContext context) {
    int precentage = 100;
    return Scaffold(
      body:  SingleChildScrollView(
          child: Column(
            children: [
              SelectCategory(),
              ///////////////////////////
              //start container of post//
              ///////////////////////////
              Container(
                
                child: Column(
                  children: [
                    Container(
                      margin: EdgeInsets.symmetric(vertical: 8, horizontal: 30),
                      child: Row(
                        children: [
                          CircleAvatar(
                            radius: 26,
                            backgroundImage: NetworkImage(
                                "https://static.vecteezy.com/system/resources/previews/014/194/216/original/avatar-icon-human-a-person-s-badge-social-media-profile-symbol-the-symbol-of-a-person-vector.jpg"),
                          ),
                          SizedBox(
                            width: 17,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "username",
                                style: TextStyle(
                                    fontSize: 17, fontWeight: FontWeight.w600),
                              ),
                              Text(
                                "22 min",
                                style: TextStyle(
                                    fontSize: 13,
                                    color:
                                        const Color.fromARGB(255, 116, 116, 116),
                                    fontWeight: FontWeight.w600),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 30),
                      padding: const EdgeInsets.only(top: 3),
                      child: Image.network(
                        "https://cdn.britannica.com/87/2087-004-264616BB/Mona-Lisa-oil-wood-panel-Leonardo-da.jpg",
                        fit: BoxFit.cover,
                        height: 350,
                        width: 350,
                      ),
                    ),
                    Container(
                      width: double.infinity,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            margin: EdgeInsets.only( left: 18),
                            child:
                                IconButton(
                                  onPressed: () {},
                                  icon: Icon(Icons.favorite_border),
                                  iconSize: 30,
                                ),
                                
                          ),
                        
                          Container(
                            margin: EdgeInsets.symmetric( horizontal: 30),
                            padding: EdgeInsets.fromLTRB(15, 5, 15, 5),
                            child: Text(
                              "100%",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 13,
                                  fontWeight: FontWeight.w700),
                            ),
                            decoration: BoxDecoration(
                              color: precentage >= 50 ? graanColor : redColor,
                              borderRadius: BorderRadius.circular(3),
                            ),
                          )
                        ],
                      ),
                    ),
                    Container(
                      width: 350,
                      margin: EdgeInsets.symmetric( horizontal: 30),
                      child: Text(
                                    "10 Likes",
                                    style: TextStyle(
                                        fontSize: 16, color: const Color.fromARGB(255, 0, 0, 0), fontWeight: FontWeight.w500),
                                  ),
                    ),
                    Container(
                      margin: EdgeInsets.symmetric( horizontal: 30),
                      width: 350,
                      child: Text(
                        "I have finished drawing my painting",
                        style: TextStyle(fontSize: 15),
                      ),
                    ),
                    Container(
                      width: 350,
                      margin: EdgeInsets.only(bottom: 8, left: 30, right: 130),
                      child: Text(
                        "Goal Type: Art",
                        style: TextStyle(fontSize: 13, color: Colors.black38),
                      ),
                    ),
                  ],
                ),
              ),
              ///////////////////////////
              //end container of post////
              ///////////////////////////
              ///
            ],
          ),
        ),   
    );
  }
}
