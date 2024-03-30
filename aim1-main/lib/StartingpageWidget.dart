import 'package:aim1/Createaccount.dart';
import 'package:aim1/Login.dart';
import 'package:flutter/material.dart';

class StartingpageWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(255, 255, 255, 1),
      body: Stack(
        children: <Widget>[
          Positioned(
            top: 461,
            left: 123,
            child: Text(
              'welcome !',
              textAlign: TextAlign.left,
              style: TextStyle(
                color: Color.fromRGBO(100, 100, 100, 1),
                fontFamily: 'Pacifico',
                fontSize: 32,
                letterSpacing: 0,
                fontWeight: FontWeight.normal,
                height: 1,
              ),
            ),
          ),
          Positioned(
            top: 548,
            left: 56,
            child: Container(
              width: 278,
              height: 46,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(19),
                boxShadow: [
                  BoxShadow(
                    color: Color(0xFF710AB6),
                    offset: Offset(0, 6),
                    blurRadius: 15,
                  ),
                ],
                color: Color(0xFF710AB6),
              ),
            ),
          ),
          Positioned(
            top: 610,
            left: 56,
            child: Container(
              width: 278,
              height: 46,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(19),
                boxShadow: [
                  BoxShadow(
                    color: Color.fromRGBO(254, 106, 63, 0.38999998569488525),
                    offset: Offset(0, 6),
                    blurRadius: 6,
                  ),
                ],
                color: Color.fromRGBO(255, 255, 255, 1),
                border: Border.all(
                  color: Color(0xFF710AB6),
                  width: 1,
                ),
              ),
            ),
          ),
          Positioned(
            top: 558,
            left: 124,
            child: InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => CreateAccountPageWidget()),
                );
              },
              child: Text(
                'Create Account',
                textAlign: TextAlign.left,
                style: TextStyle(
                  color: Color.fromRGBO(255, 255, 255, 1),
                  fontFamily: 'Nunito',
                  fontSize: 20,
                  letterSpacing: 0,
                  fontWeight: FontWeight.normal,
                  height: 1,
                ),
              ),
            ),
          ),
          Positioned(
            top: 620,
            left: 169,
            child: InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Login()),
                );
              },
              child: Text(
                'Login',
                textAlign: TextAlign.left,
                style: TextStyle(
                  color: Color(0xFF710AB6),
                  fontFamily: 'Nunito',
                  fontSize: 20,
                  letterSpacing: 0,
                  fontWeight: FontWeight.normal,
                  height: 1,
                ),
              ),
            ),
          ),
          Positioned(
            top: 166,
            left: 84,
            child: Text(
              'aim',
              textAlign: TextAlign.left,
              style: TextStyle(
                color: Color(0xFF710AB6),
                fontFamily: 'Script MT Bold',
                fontSize: 130.15426635742188,
                letterSpacing: 0,
                fontWeight: FontWeight.bold,
                height: 1,
              ),
            ),
          ),
          Positioned(
            top: 164,
            left: 124,
            child: Container(
              width: 21,
              height: 2,
              decoration: BoxDecoration(),
              child: Stack(
                children: <Widget>[],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
