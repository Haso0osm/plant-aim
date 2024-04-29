// ignore_for_file: prefer_const_constructors

import 'colors.dart';
// ignore: unused_import
import 'selectCategor.dart';
import 'selectCategor2.dart';
import 'package:flutter/material.dart';

class EditPost extends StatefulWidget {
  const EditPost({super.key});

  @override
  State<EditPost> createState() => _EditPostState();
}

class _EditPostState extends State<EditPost> {
  bool isLoading = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.arrow_back,
              size: 27,
            )),
        actions: [
          TextButton(
            onPressed: () {
              setState(() {
                isLoading = true;
              });
            },
            child: const Text(
              "Post",
              style: TextStyle(
                  color: primaryColor,
                  fontSize: 19,
                  fontWeight: FontWeight.bold),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(children: [
          isLoading
              ? //isLoading now is false, if it's still false = div , not = linear
              LinearProgressIndicator(color: primaryColor)
              : Divider(
                  thickness: 0.5,
                  height: 30,
                ),
          Container(
            margin: EdgeInsets.only(top: 10, bottom: 40),
            width: 200,
            height: 200,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: NetworkImage(
              "https://www.ketchum.edu/sites/default/files/2022-08/First%20%28Top%29%20Image%20.jpeg",
            ))),
          ),
          Container(
            padding: EdgeInsets.only(left: 10, right: 10),
            decoration: BoxDecoration(
              border: Border.all(color: secondaryColor, width: 0.3),
              borderRadius: BorderRadius.circular(5),
            ),
            width: 300,
            height: 100,
            child: TextField(
              textInputAction: TextInputAction.next,
              maxLength: 66,
              maxLines: 2,
              decoration: InputDecoration(
                  hintText: "Write a caption...", border: InputBorder.none),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 40),
            padding: EdgeInsets.only(left: 10, right: 10),
            decoration: BoxDecoration(
              border: Border.all(color: secondaryColor, width: 0.3),
              borderRadius: BorderRadius.circular(5),
            ),
            width: 200,
            height: 70,
            child: TextField(
              keyboardType: TextInputType.number,
              maxLength: 3,
              maxLines: 1,
              decoration: InputDecoration(
                labelStyle: TextStyle(fontSize: 4),
                hintText: "Level of goal...",
                border: InputBorder.none,
              ),
            ),
          ),
          Container(
            width: 300,
            margin: EdgeInsets.fromLTRB(0, 40, 0, 0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Select categoery: "),
                SelectCategor2(),
              ],
            ),
          ),
        ]),
      ),
    );
  }
}
