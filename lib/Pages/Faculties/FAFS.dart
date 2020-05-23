import 'package:aub/Pages/PDFViewer.dart';
import 'package:aub/Widgets/Cover2.dart';
import 'package:flutter/material.dart';
import 'package:nice_button/NiceButton.dart';

class FAFS extends StatefulWidget {
  @override
  _FAFSState createState() => _FAFSState();
}

class _FAFSState extends State<FAFS> {
  @override
  Widget build(BuildContext context) {
    var firstColor = Color.fromARGB(255, 60, 0, 0),
        secondColor = Color.fromARGB(255, 140, 0, 0);
    return Scaffold(
        appBar: AppBar(
          title: Text("Faculty of Agricultural and Food Sciences"),
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
                                      image: AssetImage('assets/logoFAFS.jpg'))),
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
                                  "The Faculty of Agricultural and Food Sciences is home to the Departments of Agriculture, Landscape Design and Ecosystem Management, and Nutrition and Food Sciences, as well as two multidisciplinary centers: Environment and Sustainable Development Unit (ESDU), and the Advancin​g Research Enabling Communities Center (AREC); offering six​ undergraduate and 13 graduate degrees.",
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
                                  text: "Dean Dr. Rabi Mohta",
                                  image: "assets/deanFAFS.jpg"),

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
//                                    "http://aubtvapp.000webhostapp.com/api/catalogues/FAFS.php")));
//                      },
//                    )),
//              ],
//            ),
          ]),
        ));
  }
}
