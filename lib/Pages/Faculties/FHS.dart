import 'package:aub/Pages/PDFViewer.dart';
import 'package:aub/Widgets/Cover2.dart';
import 'package:flutter/material.dart';
import 'package:nice_button/NiceButton.dart';

class FHS extends StatefulWidget {
  @override
  _FHSState createState() => _FHSState();
}

class _FHSState extends State<FHS> {
  @override
  Widget build(BuildContext context) {
    var firstColor = Color.fromARGB(255, 60, 0, 0),
        secondColor = Color.fromARGB(255, 140, 0, 0);
    return Scaffold(
        appBar: AppBar(
          title: Text("Faculty of Health Sciences"),
          backgroundColor: Color.fromARGB(255, 35, 40, 50),
        ),
        backgroundColor: Color.fromARGB(255, 35, 40, 50),
        body: SafeArea(
          child: Column(children: <Widget>[
            Row(
              children: <Widget>[
                Container(
                  color: Color.fromARGB(255, 35, 40, 50),
                  height: MediaQuery.of(context).size.height * 0.6,
                  width: MediaQuery.of(context).size.width,
                  child: Row(
                    children: <Widget>[
                      Container(
                        child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Container(
                              margin: new EdgeInsets.all(8.0),
                              decoration: new BoxDecoration(
                                  image: new DecorationImage(
                                      image: AssetImage('assets/logoFHS.jpg'))),
//                        color: Color.fromARGB(255, 35, 40, 50),
                              width: MediaQuery.of(context).size.width * 0.3,
                              alignment: Alignment.center,
                            )),
                      ),
                      Container(
                        child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Container(
                              child: Text(
                                  "As one of the oldest and most prominent schools of public health in the region, FHS aims since its inception to shape the public health discourse by preparing professionals to be agents of change, and producing research that impacts practice and policy, and thus the health of populations.​"
                                  "​​FHS is a close-knit faculty, with 53 faculty members and more than 400 students. Our faculty offers 12 undergraduate and graduate programs, as well as opportunities for participation in relevant research and community-based public heal​​th projects. ",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontStyle: FontStyle.italic,
                                      fontSize: 13),
                                  textAlign: TextAlign.center),

//                        color: Color.fromARGB(255, 35, 40, 50),
                              width: MediaQuery.of(context).size.width * 0.3,
                              alignment: Alignment.center,
                            )),
                      ),
                      Container(
                        child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Container(
                              margin: new EdgeInsets.all(8.0),
                              child: Cover2(
                                  text: "Dean Iman Nuwayhid",
                                  image: "assets/deanFHS.jpg"),

//                        color: Color.fromARGB(255, 35, 40, 50),
                              width: MediaQuery.of(context).size.width * 0.25,
                              alignment: Alignment.center,
                            )),
                      ),
                    ],
                  ),
                ),
              ],
            ),
//            Row(
//              children: <Widget>[
//                Container(
//                    color: Color.fromARGB(255, 35, 40, 50),
//                    height: MediaQuery.of(context).size.height * 0.2,
//                    alignment: Alignment.center,
//                    width: MediaQuery.of(context).size.width,
//                    child: NiceButton(
//                      radius: 10,
//                      padding: const EdgeInsets.all(15),
//                      text: "Open Catalogue",
//                      fontSize: 14,
//                      elevation: 20,
//                      gradientColors: [secondColor, firstColor],
//                      onPressed: () {
//                        Navigator.push(
//                            context,
//                            MaterialPageRoute(
//                                builder: (context) => PDFViewer(
//                                    "http://aubtvapp.000webhostapp.com/api/catalogues/FHS.php")));
//                      },
//                    )),
//              ],
//            ),
          ]),
        ));
  }
}
