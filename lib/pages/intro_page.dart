import 'package:covid_app/core/constant.dart';
import 'package:covid_app/pages/home_page.dart';
import 'package:covid_app/widgets/footer_intro.dart';
import 'package:flutter/material.dart';

import '../core/constant.dart';

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
          gradient: LinearGradient(colors: [
            AppColors.mainColor,
            AppColors.mainColor.withOpacity(.5)
          ], begin: Alignment.topCenter, end: Alignment.bottomCenter),
        ),
        child: Stack(
          children: <Widget>[
            _buildHeader(),
            Align(
                alignment: Alignment.center,
                child: Container(
                    width: size.width * .85,
                    child: Image.asset("assets/images/virus.png"))),
            Positioned(
                top: size.height * .3,
                right: 25,
                child: Container(
                    width: size.width * .35,
                    child: Image.asset("assets/images/person.png"))),
            FooterIntro(
              size: size,
              press: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => HomePage(),
                    ));
              },
            )
          ],
        ),
      ),
    );
  }

  Widget _buildHeader() {
    return Padding(
      padding: const EdgeInsets.only(top: 50),
      child: Align(
        alignment: Alignment.topCenter,
        child: Image.asset("assets/images/logo.png"),
      ),
    );
  }
}
