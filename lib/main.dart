import 'package:covid_app/pages/intro_page.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Covid App",
      theme: ThemeData(  
        primaryColor: Colors.blue,
        fontFamily: "Ubuntu",
      ),
      home: IntroPage(),
    );
  }
}