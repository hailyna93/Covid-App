import 'package:covid_app/pages/statistics_page.dart';
import 'package:covid_app/widgets/custom_appbar.dart';
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
      body: SingleChildScrollView(
        child: Column(
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
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    height: 140,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: <Widget>[
                        ItemSymptoms(
                          image: "assets/images/1.png",
                          text: "Fever",
                        ),
                        ItemSymptoms(
                          image: "assets/images/2.png",
                          text: "Dry Cough",
                        ),
                        ItemSymptoms(
                          image: "assets/images/3.png",
                          text: "Headache",
                        ),
                        ItemSymptoms(
                          image: "assets/images/4.png",
                          text: "Brea",
                        ),
                      ],
                    ),
                  ),
                  Text(
                    "Prevention",
                    style: Theme.of(context)
                        .textTheme
                        .headline6
                        .copyWith(fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    height: 100,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: <Widget>[
                        ItemPrevention(
                          image: "assets/images/a10.png",
                          text1: "WASH",
                          text2: "hands often",
                        ),
                        ItemPrevention(
                          image: "assets/images/a4.png",
                          text1: "COVER",
                          text2: "your cough",
                        ),
                        ItemPrevention(
                          image: "assets/images/a6.png",
                          text1: "ALWAYS",
                          text2: "clean",
                        ),
                        ItemPrevention(
                          image: "assets/images/a9.png",
                          text1: "Use",
                          text2: "mask",
                        )
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(12),
                    height: 100,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20),
                        boxShadow: [
                          BoxShadow(
                              color: Colors.purple.withOpacity(.1),
                              offset: Offset(1, 1),
                              spreadRadius: 1,
                              blurRadius: 5)
                        ]),
                    child: Row(
                      children: <Widget>[
                        Image.asset("assets/images/map.png"),
                        SizedBox(
                          width: 5,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            RichText(
                              text: TextSpan(
                                  text: "CASES\n",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20,
                                      color: AppColors.mainColor),
                                  children: [
                                    TextSpan(
                                        text: "Overview Worldwide\n",
                                        style: TextStyle(
                                            fontSize: 16,
                                            color: AppColors.mainColor)),
                                    TextSpan(
                                        text: "21,58,594 Confirmed",
                                        style: TextStyle(
                                            height: 1.5,
                                            color: Colors.grey,
                                            fontSize: 12))
                                  ]),
                            )
                          ],
                        ),
                        Spacer(),
                        GestureDetector(
                          onTap: () => Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => StatisticsPage(),
                              )),
                          child: Icon(
                            Icons.chevron_right,
                            color: Colors.grey,
                            size: 30,
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildHeader() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        CustomAppBar(),
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
}

class ItemPrevention extends StatelessWidget {
  const ItemPrevention({
    Key key,
    this.image,
    this.text1,
    this.text2,
  }) : super(key: key);

  final String image;
  final String text1;
  final String text2;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          margin: EdgeInsets.only(right: 10),
          height: 80,
          width: 170,
          padding: EdgeInsets.all(12),
          decoration: BoxDecoration(boxShadow: [
            BoxShadow(
                color: Colors.purple.withOpacity(.1),
                offset: Offset(1, 5),
                spreadRadius: 1,
                blurRadius: 5)
          ], color: Colors.white, borderRadius: BorderRadius.circular(20)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Image.asset(image),
              RichText(
                text:
                    TextSpan(style: TextStyle(color: Colors.black), children: [
                  TextSpan(
                      text: "$text1\n",
                      style: TextStyle(
                          color: AppColors.mainColor,
                          fontWeight: FontWeight.bold,
                          fontSize: 20)),
                  TextSpan(text: text2, style: TextStyle(fontSize: 16))
                ]),
              )
            ],
          ),
        ),
      ],
    );
  }
}

class ItemSymptoms extends StatelessWidget {
  const ItemSymptoms({
    Key key,
    this.image,
    this.text,
  }) : super(key: key);

  final String image;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 10),
      child: Column(
        children: <Widget>[
          Container(
            width: 100,
            height: 100,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.all(
                  Radius.circular(15),
                ),
                gradient: LinearGradient(colors: [
                  AppColors.mainColor.withOpacity(.01),
                  Colors.white
                ], begin: Alignment.topCenter, end: Alignment.bottomCenter),
                border: Border.all(color: Colors.white),
                boxShadow: [
                  BoxShadow(
                      color: Colors.black26,
                      offset: Offset(1, 1),
                      spreadRadius: 1,
                      blurRadius: 3)
                ],
                image: DecorationImage(
                    fit: BoxFit.contain, image: AssetImage(image))),
          ),
          SizedBox(
            height: 5,
          ),
          Text(
            text,
            style: TextStyle(fontWeight: FontWeight.bold),
          )
        ],
      ),
    );
  }
}
