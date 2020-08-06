import 'package:covid_app/core/constant.dart';
import 'package:covid_app/core/my_flutter_app_icons.dart';
import 'package:covid_app/widgets/chart_widget.dart';
import 'package:covid_app/widgets/custom_appbar.dart';
import 'package:covid_app/widgets/gender.dart';
import 'package:flutter/material.dart';

class StatisticsPage extends StatefulWidget {
  @override
  _StatisticsPageState createState() => _StatisticsPageState();
}

class _StatisticsPageState extends State<StatisticsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColors.backgroundColor,
        body: SingleChildScrollView(
          child: Stack(
            children: <Widget>[
              Container(
                height: 275,
                padding: EdgeInsets.only(top: 25),
                decoration: BoxDecoration(
                    color: AppColors.mainColor,
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(15),
                        bottomRight: Radius.circular(15))),
                child: Image.asset("assets/images/virus2.png"),
              ),
              Container(
                padding: EdgeInsets.only(top: 25),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    CustomAppBar(),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      child: Text(
                        "statistics".toUpperCase(),
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 36),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    buildChartStatis(),
                    SizedBox(
                      height: 20,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          GenderItem(
                            icon: MyFlutterApp.male,
                            color: Colors.orangeAccent,
                            gender: "Male",
                            value: 59.5,
                          ),
                          GenderItem(
                            icon: MyFlutterApp.female,
                            color: Colors.pinkAccent,
                            gender: "Female",
                            value: 40.5,
                          ),
                        ],
                      ),
                    ),
                    Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: 16, vertical: 20),
                      child: RichText(
                        text: TextSpan(
                            text: "Globle Case of ",
                            style: Theme.of(context)
                                .textTheme
                                .headline5
                                .copyWith(fontWeight: FontWeight.bold),
                            children: [
                              TextSpan(
                                  text: "Covid 19",
                                  style: TextStyle(color: AppColors.mainColor))
                            ]),
                      ),
                    ),
                    Container(
                      alignment: Alignment.center,
                      height: 170,
                      padding: EdgeInsets.symmetric(horizontal: 16),
                      child: Image.asset(
                        "assets/images/map.png",
                        fit: BoxFit.fill,
                      ),
                    ),
                    SizedBox(
                      height: 40,
                    )
                  ],
                ),
              ),
            ],
          ),
        ));
  }

  Widget buildChartStatis() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 16),
      padding: EdgeInsets.all(24),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
          border: Border.all(color: Colors.white),
          boxShadow: [
            BoxShadow(
                offset: Offset(1, 1),
                color: Colors.black12,
                spreadRadius: 1,
                blurRadius: 1)
          ]),
      child: Center(
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Container(
              width: 150,
              height: 150,
              child: DonutPieChart.withSampleData(),
            ),
            SizedBox(
              width: 20,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                _buildStatisItem(Colors.blueAccent, "Confirmed", "23,29,539"),
                SizedBox(
                  height: 10,
                ),
                _buildStatisItem(Colors.orangeAccent, "Recovered", "5,95,229"),
                SizedBox(
                  height: 10,
                ),
                _buildStatisItem(Colors.redAccent, "Deaths", "1,60,717"),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildStatisItem(Color color, String text, String value) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Icon(
          MyFlutterApp.label,
          size: 20,
          color: color,
        ),
        SizedBox(
          width: 10,
        ),
        Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              text,
              style: TextStyle(color: Colors.grey),
            ),
            Text(
              value,
              style: TextStyle(color: Colors.black, height: 1.5),
            )
          ],
        ),
      ],
    );
  }
}
