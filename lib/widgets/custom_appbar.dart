import 'package:covid_app/core/my_flutter_app_icons.dart';
import 'package:flutter/material.dart';

class CustomAppBar extends StatefulWidget {
  @override
  _CustomAppBarState createState() => _CustomAppBarState();
}

class _CustomAppBarState extends State<CustomAppBar> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        IconButton(
          icon: Icon(
            MyFlutterApp.short_text,
            color: Colors.white,
          ),
          onPressed: () {},
        ),
        Container(
          width: 50,
          height: 50,
          margin: EdgeInsets.all(16),
          decoration: BoxDecoration(
              border: Border.all(color: Colors.white),
              borderRadius: BorderRadius.circular(100),
              image: DecorationImage(
                  fit: BoxFit.fill,
                  image: AssetImage("assets/images/profile.jpg"))),
        )
      ],
    );
  }
}
