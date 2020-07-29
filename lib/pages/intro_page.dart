import 'package:covid_app/core/constant.dart';
import 'package:flutter/material.dart';

class IntroPage extends StatefulWidget {
  @override
  _IntroPageState createState() => _IntroPageState();
}

class _IntroPageState extends State<IntroPage> {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container( 
        width: size.width,
        height: size.height,
        decoration: BoxDecoration(  
          gradient: LinearGradient(  
            colors: [
              AppColors.mainColor,
              AppColors.mainColor.withOpacity(.5)
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter
          ),
        ),
        child: Stack(  
          children: <Widget>[
            Image.asset("assets/images/logo.png")
          ],
        ),
      ),
    );
  }
}