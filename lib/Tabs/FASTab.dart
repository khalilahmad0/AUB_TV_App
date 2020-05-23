import 'package:aub/Pages/PDFViewer.dart';
import 'package:aub/Widgets/Cover2.dart';
import 'package:flutter/material.dart';
import 'package:nice_button/NiceButton.dart';

class FASTab extends StatefulWidget {
  @override
  _FASTabState createState() => _FASTabState();
}

class _FASTabState extends State<FASTab> {
  @override
  Widget build(BuildContext context) {
    var firstColor = Color.fromARGB(255, 60, 0, 0),
        secondColor = Color.fromARGB(255, 140, 0, 0);
    return Scaffold(
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
                                      image: AssetImage('assets/FAS22.jfif'))),
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
                                  "The Faculty of Arts and Sciences embodies AUB’s core commitment to the liberal arts and sciences. It offers undergraduate and graduate programs in the arts, humanities, and social, natural, and mathematical sciences, and is dedicated to advanced research in all of these domains. Through its freshmen and general education programs, it is the university’s principal gateway to higher studies and professional education. The faculty, through its teaching and research, promotes free inquiry, critical thinking, academic integrity, and respect for diversity and equality.",
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
                                  text: "Dean Nadia El Cheikh",
                                  image: "assets/nadia.png"),

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
//                                    "http://aubtvapp.000webhostapp.com/api/catalogues/FAS.php")));
//                      },
//                    )),
//              ],
//            ),
          ]),
        ));
  }
}
