import 'package:aim1/Rank.dart';
import 'package:aim1/settings.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'StartingpageWidget.dart';
import 'Login.dart';
import 'Createaccount.dart';
import 'Mobile.dart';
import 'upload.dart';
import 'virtualgarden.dart';
import 'message.dart';
import 'editprofile.dart';

void main() {
  debugPaintSizeEnabled = false;
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light(useMaterial3: true),
      initialRoute: '/',
      routes: {
        '/': (context) => StartingpageWidget(),
        '/login': (context) => Login(),
        '/createaccount': (context) => CreateAccountPageWidget(),
        '/home': (context) => Mobile(),
        '/upload': (context) => Upload(),
        '/message': (context) => MyApp(),
        '/garden': (context) => Virtualgarden(),
        '/setting': (context) => Settings(),
        '/edit': (context) => Editprofile(),
      },
    );
  }
}
