import 'selectCategor.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Following extends StatelessWidget {
  const Following({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  SingleChildScrollView(
          child: Column(
            children: [
              SelectCategory(),
              ///////////////////////////
              //start container of post//
              ///////////////////////////
              Container(
                margin: EdgeInsets.symmetric(vertical: 8, horizontal: 30),
                child: Text("not yet")
              ///////////////////////////
              //end container of post////
              ///////////////////////////
              ///
              )
            ]
          ),
        ),   
    );
  }
}