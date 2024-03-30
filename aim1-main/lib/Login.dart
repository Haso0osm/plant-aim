import 'package:aim1/HomePageWidget.dart';
import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          color: Colors.white,
        ),
        constraints: BoxConstraints(
          maxWidth: 480,
        ),
        padding: EdgeInsets.fromLTRB(14, 50, 56, 50),
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
              'Welcome Back !',
              style: TextStyle(
                color: Color(0xFF4D5F5F),
                fontSize: 32,
                fontWeight: FontWeight.w600,
              ),
            ),
            SizedBox(height: 18),
            Text(
              'Log In Now',
              style: TextStyle(
                color: Color.fromRGBO(85, 0, 169, 0.71),
                fontSize: 32,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10),
            Text(
              'Please login to continue our app',
              style: TextStyle(
                color: Color.fromRGBO(77, 95, 95, 0.75),
                fontSize: 15,
                fontWeight: FontWeight.w500,
              ),
            ),
            SizedBox(height: 47),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(19),
                border: Border.all(
                  color: Color.fromRGBO(77, 95, 95, 0.71),
                ),
                color: Colors.white,
              ),
              alignment: Alignment.centerLeft,
              padding: EdgeInsets.fromLTRB(18, 18, 18, 18),
              width: 278,
              child: Text(
                'Username',
                style: TextStyle(
                  color: Color.fromRGBO(88, 100, 100, 0.71),
                  fontSize: 16,
                ),
              ),
            ),
            SizedBox(height: 18),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(19),
                border: Border.all(
                  color: Color.fromRGBO(77, 95, 95, 0.71),
                ),
                color: Colors.white,
              ),
              alignment: Alignment.centerLeft,
              padding: EdgeInsets.fromLTRB(18, 18, 18, 18),
              width: 278,
              child: Text(
                'Password',
                style: TextStyle(
                  color: Color.fromRGBO(88, 100, 100, 0.71),
                  fontSize: 16,
                ),
              ),
            ),
            SizedBox(height: 29),
            ElevatedButton(
              onPressed: () {
                // Perform account creation logic here

                // Navigate to the home page
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => HomePageWidget(),
                  ),
                );
              },
              child: Text(
                'Login',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              style: ElevatedButton.styleFrom(
                backgroundColor: Color(0xFF8228BF),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(19),
                ),
                padding: EdgeInsets.symmetric(
                  vertical: 14,
                  horizontal: 60,
                ),
              ),
            ),
            SizedBox(height: 183),
            Text(
              'Forgot your password?',
              style: TextStyle(
                color: Color.fromRGBO(0, 10, 255, 0.75),
                fontSize: 15,
                fontFamily: 'Nunito',
              ),
            ),
            SizedBox(height: 5),
            RichText(
              text: TextSpan(
                text: "Don't have an account? ",
                style: TextStyle(
                  fontSize: 15,
                  fontFamily: 'Nunito',
                  color: Color.fromRGBO(0, 10, 255, 0.75),
                ),
                children: [
                  TextSpan(
                    text: 'Create account',
                    style: TextStyle(
                      color: Color.fromRGBO(0, 10, 255, 1),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
