import 'package:flutter/material.dart';

import '../core/constant.dart';

class FooterIntro extends StatelessWidget {
  final Function press;
  const FooterIntro({
    Key key,
    @required this.size,
    this.press,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 50,
      child: Container(
        width: size.width,
        child: Column(
          children: <Widget>[
            Text(
              "Coronavirus disease (COVID-19",
              style: TextStyle(
                  fontSize: 24,
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
            ),
            Text(
              "is an infectianus disease caused by a new\n viruus.",
              style: TextStyle(fontSize: 20, color: Colors.white, height: 1.5),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 25,
            ),
            GestureDetector(
              onTap: press,
              child: Container(
                width: size.width * 0.8,
                height: 50,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(50),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.black26,
                          offset: Offset(0, 10),
                          spreadRadius: .5,
                          blurRadius: 2)
                    ]),
                child: Center(
                  child: Text(
                    "get started".toUpperCase(),
                    style: TextStyle(
                        color: AppColors.mainColor,
                        fontWeight: FontWeight.bold,
                        fontSize: 20),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
