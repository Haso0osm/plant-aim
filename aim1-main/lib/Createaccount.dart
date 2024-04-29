
// ignore_for_file: unused_import

import 'mobile.dart';
import 'package:flutter/material.dart';

class CreateAccountPageWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(),
      body:SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child:
         Container(
        decoration: BoxDecoration(
          color: Colors.white,
        ),
        constraints: BoxConstraints(
          maxWidth: 480,
        ),
        padding: EdgeInsets.fromLTRB(14, 50, 43, 50),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              '<',
              style: TextStyle(
                color: Colors.black,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 37),
            Text(
              'Create New Account',
              style: TextStyle(
                color: Color.fromRGBO(113, 10, 182, 0.8),
                fontSize: 32,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 18),
            Text(
              'Please fill the details and create an account',
              style: TextStyle(
                color: Color.fromRGBO(77, 95, 95, 0.75),
                fontSize: 15,
                fontWeight: FontWeight.w500,
              ),
            ),
            SizedBox(height: 38),
            TextField(
              decoration: InputDecoration(
                labelText: 'Username',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(19),
                  borderSide: BorderSide(
                    color: Color.fromRGBO(77, 95, 95, 0.71),
                  ),
                ),
                filled: true,
                fillColor: Colors.white,
                contentPadding: EdgeInsets.fromLTRB(18, 18, 18, 18),
              ),
            ),
            SizedBox(height: 18),
            TextField(
              decoration: InputDecoration(
                labelText: 'Email',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(19),
                  borderSide: BorderSide(
                    color: Color.fromRGBO(77, 95, 95, 0.71),
                  ),
                ),
                filled: true,
                fillColor: Colors.white,
                contentPadding: EdgeInsets.fromLTRB(18, 18, 18, 18),
              ),
            ),
            SizedBox(height: 18),
            TextField(
              decoration: InputDecoration(
                labelText: 'Password',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(19),
                  borderSide: BorderSide(
                    color: Color.fromRGBO(77, 95, 95, 0.71),
                  ),
                ),
                filled: true,
                fillColor: Colors.white,
                contentPadding: EdgeInsets.fromLTRB(19, 18, 19, 18),
              ),
              obscureText: true,
            ),
            SizedBox(height: 18),
            TextField(
              decoration: InputDecoration(
                labelText: 'Confirm Password',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(19),
                  borderSide: BorderSide(
                    color: Color.fromRGBO(77, 95, 95, 0.71),
                  ),
                ),
                filled: true,
                fillColor: Colors.white,
                contentPadding: EdgeInsets.fromLTRB(18, 18, 18, 18),
              ),
              obscureText: true,
            ),
            SizedBox(height: 18),
            TextField(
              decoration: InputDecoration(
                labelText: 'Phone Number',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(19),
                  borderSide: BorderSide(
                    color: Color.fromRGBO(77, 95, 95, 0.71),
                  ),
                ),
                filled: true,
                fillColor: Colors.white,
                contentPadding: EdgeInsets.fromLTRB(20, 18, 20, 18),
              ),
            ),
            SizedBox(height: 23),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, "/home");
              },
              child: Text(
                'Create Account',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              style: ElevatedButton.styleFrom(
                backgroundColor: Color.fromRGBO(113, 10, 182, 1),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(19),
                ),
                padding: EdgeInsets.symmetric(
                  vertical: 16,
                  horizontal: 60,
                ),
              ),
            ),
            SizedBox(height: 112),
            Text('Already have an account? ',style: TextStyle(fontSize: 15,fontFamily: 'Nunito'),),

            GestureDetector(
             onTap: (){Navigator.pushNamed(context, '/login');},
             child:
            Text(
              'Log In',
              style: TextStyle(
                color: Color.fromRGBO(0, 10, 255, 0.75),
                fontSize: 15,
                fontFamily: 'Nunito',
              ),
            ),
            ),
          ],
        ),
      ),
      ),
    );
  }
}
