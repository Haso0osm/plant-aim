// ignore_for_file: prefer_const_constructors, unused_import

import 'colors.dart';
import 'selectCategor2.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Upload extends StatefulWidget {
  const Upload({super.key});

  @override
  State<Upload> createState() => _UploadState();
}

class _UploadState extends State<Upload> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: mobileBackgroundColor,
        leading: IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.arrow_back,
              color: primaryColor,
              size: 27,
            )),
        title: Text(
          "Add Post",
          style: TextStyle(color: primaryColor, fontWeight: FontWeight.w500),
        ),
        centerTitle: true,
      ),
      body: Center(
        child: IconButton(
            onPressed: () {},
            icon: Icon(Icons.upload, size: 70, color: primaryColor)),
      ),
    );
  }
}
