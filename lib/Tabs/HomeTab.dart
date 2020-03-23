import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/material.dart';
import 'package:aub/Widgets/Cover.dart';

class HomeTab extends StatefulWidget {
  @override
  _HomeTabState createState() => _HomeTabState();
}

class _HomeTabState extends State<HomeTab> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromARGB(255, 35, 40, 50),
        body: SingleChildScrollView(
            child: Column(
          children: <Widget>[
            Container(
              color: Color.fromARGB(255, 35, 40, 50),
              child: SizedBox(
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                child: Carousel(
                  images: [
                    Image.network(
                      'https://aub.edu.lb/HomeRotator/1050x550%20rotator.jpg',
                    ),
                    Image.network(
                      "https://www.aub.edu.lb/HomeRotator/6.jpg",
                    ),
                    Image.network(
                      'https://www.aub.edu.lb/HomeRotator/AUB-Solidarity-Funds-website-rotator-1050x550px--fixed.jpg',
                    ),
                    Image.network(
                      "https://aub.edu.lb/HomeRotator/aub-homepage-MO1_9124.jpg",
                    ),
                  ],
                  dotSize: 4.0,
                  dotSpacing: 15.0,
                  dotColor: Colors.blueGrey,
                  indicatorBgPadding: 5.0,
                  dotBgColor: Color.fromARGB(255, 35, 40, 50),
                  borderRadius: true,
                  moveIndicatorFromBottom: 180.0,
                  noRadiusForIndicator: true,
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: EdgeInsets.only(left: 15),
              child: Align(
                child: Text(
                  "News",
                  style: TextStyle(color: Colors.white, fontSize: 30),
                ),
                alignment: Alignment.topLeft,
              ),
            ),
            coverListView(context, 'news'),
            SizedBox(
              height: 1,
            ),
            Padding(
              padding: EdgeInsets.only(left: 15),
              child: Align(
                child: Text(
                  "Videos",
                  style: TextStyle(color: Colors.white, fontSize: 30),
                ),
                alignment: Alignment.topLeft,
              ),
            ),
            coverListView(context, 'video'),
            SizedBox(height: 1),
            Padding(
              padding: EdgeInsets.only(left: 15),
              child: Align(
                child: Text(
                  "Live Events",
                  style: TextStyle(color: Colors.white, fontSize: 30),
                ),
                alignment: Alignment.topLeft,
              ),
            ),
            coverListView(context, 'live'),
            SizedBox(
              height: 1,
            ),
          ],
        )));
  }
}
