import 'package:aub/Pages/PDFViewer.dart';
import 'package:aub/Widgets/Cover2.dart';
import 'package:flutter/material.dart';
import 'package:nice_button/NiceButton.dart';

class MSFEA extends StatefulWidget {
  @override
  _MSFEAState createState() => _MSFEAState();
}

class _MSFEAState extends State<MSFEA> {
  @override
  Widget build(BuildContext context) {
    var firstColor = Color.fromARGB(255, 60, 0, 0),
        secondColor = Color.fromARGB(255, 140, 0, 0);
    return Scaffold(
        appBar: AppBar(
          title: Text("Maroun Semaan Faculty of Engineering and Architecture"),
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
                                      image: AssetImage('assets/logoMSFEA.jpg'))),
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
                                  "We offer world-class educational programs that prepare students for the engineering, architecture, and design professions. Rooted in the liberal education model, our programs also prepare students to be engaged citizens and leaders, entrepreneurs, and researchers who deploy their skills with ingenuity, integrity, and a sense of responsibility towards future generations. Our faculty pr​oduces transformative knowledge and technology through internationally-recognized research and design, and seeks to leverage the special contexts of Lebanon and the region to define highly novel and relevant research programs. We impact policy and practice through our alumni and by directly engaging industry, government, and the public at large.",
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
                                  text: "Dean Alan Shihadeh",
                                  image: "assets/deanMSFEA.jpg"),

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
//                                    "http://aubtvapp.000webhostapp.com/api/catalogues/MSFEA.php")));
//                      },
//                    )),
//              ],
//            ),
          ]),
        ));
  }
}
