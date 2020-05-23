import 'package:aub/Pages/PDFViewer.dart';
import 'package:aub/Widgets/Cover2.dart';
import 'package:flutter/material.dart';
import 'package:nice_button/NiceButton.dart';

class FM extends StatefulWidget {
  @override
  _FMState createState() => _FMState();
}

class _FMState extends State<FM> {
  @override
  Widget build(BuildContext context) {
    var firstColor = Color.fromARGB(255, 60, 0, 0),
        secondColor = Color.fromARGB(255, 140, 0, 0);
    return Scaffold(
        appBar: AppBar(
          title: Text("AUBMC Faculty of Medicine"),
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
                                      image: AssetImage('assets/logoFM.jpg'))),
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
                                  "The Faculty to Lead, to Progress, and to Inspire"
                                  "The Faculty of Medicine at the American University of Beirut is the leading internationally accredited medical education and research institution in Lebanon and the Middle East known for delivering educational and training programs in medicine and biomedical research responsive to the globally evolving needs in academic medicine and patient care.",
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
                                  text: "Dean Ghazi Zaatari",
                                  image: "assets/deanFM.jpeg"),

//                        color: Color.fromARGB(255, 35, 40, 50),
                              width: MediaQuery.of(context).size.width * 0.18,
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
//                                    "http://aubtvapp.000webhostapp.com/api/catalogues/FM.php")));
//                      },
//                    )),
//              ],
//            ),
          ]),
        ));
  }
}
