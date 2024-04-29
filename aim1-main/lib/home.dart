// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sort_child_properties_last, unused_import

import 'colors.dart';
import 'following.dart';
import 'forYou.dart';
import 'selectCategor.dart';
import 'upload.dart';
import 'message.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _Home();
}

class _Home extends State<Home> {
  Widget build(BuildContext context) => DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: mobileBackgroundColor,
          title: SvgPicture.asset(
            "assets/img/logo.svg",
            height: 25,
            color: primaryColor,
          ),
          centerTitle: true,
          leading: IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.search_outlined,
                color: primaryColor,
                size: 27,
              )),
          actions: [
            IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.notifications_none_outlined,
                  color: primaryColor,
                  size: 27,
                )),
            IconButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/message');
                },
                icon: Icon(
                  Icons.message_outlined,
                  color: primaryColor,
                  size: 27,
                )),
          ],
          bottom:
              TabBar(indicatorColor: primaryColor, indicatorWeight: 1, tabs: [
            Tab(
              text: "For You",
            ),
            Tab(
              text: "Following",
            ),
          ]),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.pushNamed(context, '/upload');
          },
          backgroundColor: primaryColor,
          child: Icon(
            Icons.add,
            color: Colors.white,
            size: 35,
          ),
        ),
        body: TabBarView(children: [
          ForYou(),
          Following(),
        ]),
      ));
}
