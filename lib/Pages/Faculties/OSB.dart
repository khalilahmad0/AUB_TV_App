import 'package:aub/Pages/PDFViewer.dart';
import 'package:aub/Widgets/Cover2.dart';
import 'package:flutter/material.dart';
import 'package:nice_button/NiceButton.dart';

class OSB extends StatefulWidget {
  @override
  _OSBState createState() => _OSBState();
}

class _OSBState extends State<OSB> {
  @override
  Widget build(BuildContext context) {
    var firstColor = Color.fromARGB(255, 60, 0, 0),
        secondColor = Color.fromARGB(255, 140, 0, 0);
    return Scaffold(
        appBar: AppBar(
          title: Text("Suliman S. Olayan School of Business"),
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
                                      image: AssetImage('assets/logoOSB.jpg'))),
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
                                  "The American University of Beirut enjoys a lengthy, distinguished 153-year history as one of the world's foremost universities, a reputation enhanced by the Suliman S. Olayan School of Business. OSB is highly regarded within the international community with rankings consistently placing it as a MENA leader and provider of international caliber vision and opportunity. "
                                  "The school currently enrolls over 1,500 of the most select students in the region within its world-class BBA, MBA, Executive MBA, and specialized master's degree programs in Human Resources Management, Finance, and Business Analytics. In addition to its extensive activity in providing executive education throughout the region to leading organizations, the school has long been AACSB International-accredited.",
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
                                  text: "Dean Steve harvey",
                                  image: "assets/deanOSB.jpg"),

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
            Row(
              children: <Widget>[
                Container(
                    color: Color.fromARGB(255, 35, 40, 50),
                    height: MediaQuery.of(context).size.height * 0.2,
                    alignment: Alignment.center,
                    width: MediaQuery.of(context).size.width,
                    child: NiceButton(
                      radius: 10,
                      padding: const EdgeInsets.all(15),
                      text: "Open Catalogue",
                      fontSize: 14,
                      elevation: 20,
                      gradientColors: [secondColor, firstColor],
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => PDFViewer(
                                    "http://aubtvapp.000webhostapp.com/api/catalogues/OSB.php")));
                      },
                    )),
              ],
            ),
          ]),
        ));
  }
}
