// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:aim1/virtualgarden.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 1,
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              // Row of Profile photo and virtual garden button and settings button
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      margin: EdgeInsets.fromLTRB(20, 0, 70, 10),
                      child: CircleAvatar(
                        radius: 50,
                        backgroundImage: AssetImage("lib/iconee/diriyah.jpg"),
                      ),
                    ),
                    Container(
                      height: 100,
                      //  color: Colors.amber,
                      width: 190,
                      // margin: EdgeInsets.fromLTRB(0, 0, 0, 12),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              // vvvvvvvvvvvvvvvvvvirtual garden button
                              OutlinedButton(
                                style: OutlinedButton.styleFrom(
                                  padding: EdgeInsets.fromLTRB(4, 0, 4, 0),
                                  side: BorderSide(
                                    color: const Color.fromRGBO(74, 20, 140, 1),
                                  ),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(3),
                                  ),
                                ),
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => Virtualgarden(),
                                    ),
                                  );
                                },
                                child: Row(
                                  children: [
                                    // park_rounded
                                    Icon(
                                      Icons.park_rounded,
                                      size: 20,
                                      color: Colors.green[900],
                                    ),

                                    SizedBox(
                                      width: 2,
                                    ),

                                    Text('Virtual Garden',
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 12,
                                          color: Colors.purple[900],
                                        )),
                                    SizedBox(
                                      width: 2,
                                    ),
                                    Icon(
                                      Icons.arrow_right_alt_sharp,
                                      size: 20,
                                      color: Colors.purple[900],
                                    ),
                                  ],
                                ),
                              ),
                              // end of vvvvvvvvvvvvvvvvvvirtual garden button

                              SizedBox(
                                width: 9,
                              ),

                              // Settings button
                              Container(
                                child: IconButton(
                                    icon: Icon(
                                      Icons.settings,
                                      size: 29,
                                      color: Colors.purple[900],
                                    ),
                                    onPressed: () {
                                      Navigator.pushNamed(context, '/setting');
                                    }), // // Settings page بيوديني لصفحة
                              ),
                              // end of Setting Button
                            ],
                          ),

                          // end of Row of Profile photo and virtual garden button and settings button
                        ],
                      ),
                    ),
                  ],
                ),
              ),

              Container(
                height: 180,
                width: 300,
                //  color: Colors.blue,
                child:

                    // عمود اليوزرنيم مع النقاط والبايو
                    Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          //Username
                          Text("Username",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 22)),
                        ]),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Container(
                              child: Icon(
                                Icons.star,
                                size: 17,
                                color: Colors.yellow[800],
                              ),
                            ),
                            Text(" 899 ",
                                style: TextStyle(
                                    color: Colors.yellow[700],
                                    fontWeight: FontWeight.bold,
                                    fontSize: 12)),
                            Text("Points",
                                style: TextStyle(
                                    color: Colors.yellow[700],
                                    fontWeight: FontWeight.bold,
                                    fontSize: 12)),
                            SizedBox(
                              width: 17,
                            ),
                            Container(
                              child: Icon(
                                Icons.park,
                                size: 17,
                                color: Colors.green[900],
                              ),
                            ),
                            Text(" 25 ",
                                style: TextStyle(
                                    color: Colors.green[900],
                                    fontWeight: FontWeight.bold,
                                    fontSize: 12)),
                            Text("Plants",
                                style: TextStyle(
                                    color: Colors.green[900],
                                    fontWeight: FontWeight.bold,
                                    fontSize: 12)),
                          ],
                        ),
                      ],
                    ),
                    Text(
                      "My name is sara, i have 20years old,  interested in Java programming language",
                      maxLines: 6,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        letterSpacing: 0.2,
                        color: Colors.black,
                        fontWeight: FontWeight.normal,
                        fontSize: 15,
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          //Username
                          Column(
                            children: [
                              Text(
                                "999",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 17),
                              ),
                              Text(
                                "Followers",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 17),
                              ),
                            ],
                          ),
                          SizedBox(
                            width: 20,
                          ),

                          Column(
                            children: [
                              Text(
                                "345",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 17),
                              ),
                              Text(
                                "Following",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 17),
                              ),
                            ],
                          ),
                        ]),
                  ],
                ),

                //نهايه عمود اليوزر مع النقاط والبايو
              ),

              SizedBox(
                width: 20,
              ),

              // Expanded(
              //   child: GridView.builder(
              //    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              //  عدد الاعمدة   //crossAxisCount: 3,
              //     childAspectRatio: 3 / 2,
              //     crossAxisSpacing: 10,
              //     mainAxisSpacing: 33),
              //    itemCount:3,
              //    itemBuilder: (BuildContext context, int index) {
              //       return Container(
              //         height: 100,
              //         width: 100,
              //         color: Colors.amber,
              //       );
              //    }),
              // ),
            ],
          ),
        ),
      ),
    );
  }
}
