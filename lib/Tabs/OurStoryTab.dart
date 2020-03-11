import 'package:flutter/material.dart';

class OurStoryTab extends StatefulWidget {
  @override
  _OurStoryTabState createState() => _OurStoryTabState();
}

class _OurStoryTabState extends State<OurStoryTab> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 35, 40, 50),
      body: SingleChildScrollView(
          child: Column(children: <Widget>[
        Container(
            color: Color.fromARGB(255, 35, 40, 50),
            child: Image.network(
              "https://asiansinbusiness.co.uk/wp-content/uploads/2016/10/News-Story-4.jpg",
            )),
        Container(
          color: Color.fromARGB(255, 35, 40, 50),
          height: MediaQuery.of(context).size.height * 0.3,
          width: MediaQuery.of(context).size.width,
          child: Text(
              "this part of the textbox is made to include how the team members met and how the team was formed!",
              style: TextStyle(color: Colors.white70),
              textAlign: TextAlign.center),
        ),
        Row(
          children: <Widget>[
            Container(
              color: Color.fromARGB(255, 35, 40, 50),
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              child: Row(
                children: <Widget>[
                  Container(
                    color: Color.fromARGB(255, 35, 40, 50),
                    width: MediaQuery.of(context).size.width / 2,
                    alignment: Alignment.center,
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Image.network(
                          "https://upload.wikimedia.org/wikipedia/en/thumb/3/30/Jon_Snow_Season_8.png/220px-Jon_Snow_Season_8.png",
                          width: MediaQuery.of(context).size.width / 2,
                          alignment: Alignment.center),
                    ),
                  ),
                  Container(
                    color: Color.fromARGB(255, 35, 40, 50),
                    width: MediaQuery.of(context).size.width / 2,
                    alignment: Alignment.center,
                    child: Text("this is a test for text box",
                        style: TextStyle(color: Colors.white70),
                        textAlign: TextAlign.center),
                  )
                ],
              ),
            ),
          ],
        ),
        Row(
          children: <Widget>[
            Container(
              color: Color.fromARGB(255, 35, 40, 50),
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              child: Row(
                children: <Widget>[
                  Container(
                    color: Color.fromARGB(255, 35, 40, 50),
                    width: MediaQuery.of(context).size.width / 2,
                    alignment: Alignment.center,
                    child: Text("this is a test for text box",
                        style: TextStyle(color: Colors.white70),
                        textAlign: TextAlign.center),
                  ),
                  Container(
                    color: Color.fromARGB(255, 35, 40, 50),
                    width: MediaQuery.of(context).size.width / 2,
                    alignment: Alignment.center,
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Image.network(
                          "https://ielhajj.github.io/photo.jpg",
                          width: MediaQuery.of(context).size.width / 2,
                          alignment: Alignment.center),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        Row(
          children: <Widget>[
            Container(
              color: Color.fromARGB(255, 35, 40, 50),
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              child: Row(
                children: <Widget>[
                  Container(
                    color: Color.fromARGB(255, 35, 40, 50),
                    width: MediaQuery.of(context).size.width / 2,
                    alignment: Alignment.center,
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Image.network(
                          "https://tmssl.akamaized.net/images/portrait/originals/28003-1510231943.jpg",
                          width: MediaQuery.of(context).size.width / 2,
                          alignment: Alignment.center),
                    ),
                  ),
                  Container(
                    color: Color.fromARGB(255, 35, 40, 50),
                    width: MediaQuery.of(context).size.width / 2,
                    alignment: Alignment.center,
                    child: Text("this is a test for text box",
                        style: TextStyle(color: Colors.white70),
                        textAlign: TextAlign.center),
                  )
                ],
              ),
            ),
          ],
        ),
        Row(
          children: <Widget>[
            Container(
              color: Color.fromARGB(255, 35, 40, 50),
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              child: Row(
                children: <Widget>[
                  Container(
                    color: Color.fromARGB(255, 35, 40, 50),
                    width: MediaQuery.of(context).size.width / 2,
                    alignment: Alignment.center,
                    child: Text("this is a test for text box",
                        style: TextStyle(color: Colors.white70),
                        textAlign: TextAlign.center),
                  ),
                  Container(
                    color: Color.fromARGB(255, 35, 40, 50),
                    width: MediaQuery.of(context).size.width / 2,
                    alignment: Alignment.center,
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Image.network(
                          "https://i.pinimg.com/564x/75/3b/81/753b812a6226eb6c5f9d518bf78a5a1d.jpg",
                          width: MediaQuery.of(context).size.width / 2,
                          alignment: Alignment.center),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ])),
    );
  }
}
