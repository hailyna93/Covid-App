import 'package:covid_app/core/my_flutter_app_icons.dart';
import 'package:flutter/material.dart';
import '../core/constant.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      body: Column(
        children: <Widget>[
          Container(
            padding: EdgeInsets.only(top: 25, bottom: 20),
            decoration: BoxDecoration(
                color: AppColors.mainColor,
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(30),
                    bottomRight: Radius.circular(30))),
            child: Stack(
              children: <Widget>[
                Image.asset("assets/images/virus2.png"),
                _buildHeader(),
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            width: size.width,
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                RichText(
                  text: TextSpan(
                      style: Theme.of(context)
                          .textTheme
                          .headline6
                          .copyWith(fontWeight: FontWeight.bold),
                      children: [
                        TextSpan(
                            text: "Symptoms of ",
                            style: TextStyle(color: Colors.black)),
                        TextSpan(
                            text: "Covid 19",
                            style: TextStyle(color: AppColors.mainColor))
                      ]),
                )
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget _buildHeader() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        buildAppBar(),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Text(
            "covid 19".toUpperCase(),
            style: TextStyle(
                color: Colors.white, fontWeight: FontWeight.bold, fontSize: 36),
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Text(
            "Coronavitus Relief Fund",
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Text(
            "To this fund will help to stop the virus's sprea and give \n communitieson the font lines.",
            style: TextStyle(color: Colors.white, height: 1.5),
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Row(
            children: <Widget>[
              buildButton(color: Colors.blueAccent, text: "donate now"),
              SizedBox(
                width: 10,
              ),
              buildButton(color: Colors.redAccent, text: "emergency")
            ],
          ),
        )
      ],
    );
  }

  Widget buildButton({Color color, String text}) {
    return Expanded(
      child: RaisedButton(
        onPressed: () {},
        child: Text(
          "$text".toUpperCase(),
          style: TextStyle(color: Colors.white),
        ),
        color: color,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
      ),
    );
  }

  Row buildAppBar() {
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
