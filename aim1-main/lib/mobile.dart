// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'Plant.dart';
import 'ProfilePage.dart';
import 'Rank.dart';
import 'colors.dart';
import 'home.dart';
import 'selectCategor.dart';
import 'selectCategor2.dart';
import 'upload.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Mobile extends StatefulWidget {
  const Mobile({Key? key}) : super(key: key);

  State<Mobile> createState() => MobileScreen();
}

class MobileScreen extends State<Mobile> {
  final PageController _pageController = PageController();
  int currentPage = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CupertinoTabBar(
          onTap: (int index) {
            _pageController.jumpToPage(index);
            setState(() {
              currentPage = index;
            });
          },
          backgroundColor: Color.fromARGB(255, 255, 255, 255),
          items: [
            BottomNavigationBarItem(
              label: "Home",
              icon: Icon(Icons.home_filled,
                  color: currentPage == 0 ? primaryColor : secondaryColor),
            ),
            BottomNavigationBarItem(
              label: "Rank",
              icon: Icon(Icons.align_vertical_bottom_rounded,
                  color: currentPage == 1 ? primaryColor : secondaryColor),
            ),
            BottomNavigationBarItem(
              label: "Store",
              icon: Icon(Icons.forest_rounded,
                  color: currentPage == 2 ? primaryColor : secondaryColor),
            ),
            BottomNavigationBarItem(
              label: "Profile",
              icon: Icon(Icons.account_circle_rounded,
                  color: currentPage == 3 ? primaryColor : secondaryColor),
            ),
          ]),
      body: PageView(
        //  onPageChanged: (index) {}
        physics: NeverScrollableScrollPhysics(),
        controller: _pageController,
        children: [
          Home(),
          Rank(),
          Plant(),
          ProfilePage(),
        ],
      ),
    );
  }
}
