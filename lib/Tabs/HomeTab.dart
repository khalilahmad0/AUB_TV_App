import 'dart:convert';

import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/material.dart';
import 'package:aub/Widgets/Cover.dart';
import 'package:http/http.dart' as http;

class HomeTab extends StatefulWidget {
  @override
  _HomeTabState createState() => _HomeTabState();
}

class _HomeTabState extends State<HomeTab> {
  var carouselImages;

  @override
  void initState() {
    carouselImages = getCarouselImages();
    super.initState();
  }

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
                  child: FutureBuilder(
                    future: carouselImages,
                    builder: (context, snapshot) {
                      if (snapshot.hasData) {
                        var images = snapshot.data;
                        return Carousel(
                          images: [
                            Image.network(
                              images[0],
                            ),
                            Image.network(
                              images[1],
                            ),
                            Image.network(
                              images[2],
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
                        );
                      } else if (snapshot.hasError) {
                        return Text("Error");
                      }

                      return Center(
                        child: SizedBox(
                          child: CircularProgressIndicator(),
                          height: 50,
                          width: 50,
                        ),
                      );
                    },
                  )),
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

  getCarouselImages() async {
    final response = await http
        .get('https://aubtvapp.000webhostapp.com/api/carousel/read.php');
    var images = [];
    if (response.statusCode == 200) {
      var imagesJson = json.decode(response.body) as List;
      for (var image in imagesJson) {
        images.add(image["image"]);
      }
      return images;
    } else {
      // If the server did not return a 200 OK response,
      // then throw an exception.
      throw Exception('Failed to load album');
    }
  }
}
