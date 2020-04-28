import 'package:aub/Pages/PDFViewer.dart';
import 'package:aub/Widgets/Cover.dart';
import 'package:aub/Widgets/Cover2.dart';
import 'package:flutter/material.dart';
import 'package:nice_button/NiceButton.dart';

class CMPSTab extends StatefulWidget {
  @override
  _CMPSTabState createState() => _CMPSTabState();
}

class _CMPSTabState extends State<CMPSTab> {
  @override
  Widget build(BuildContext context) {
    var firstColor = Color.fromARGB(255, 60, 0, 0),
        secondColor = Color.fromARGB(255, 140, 0, 0);
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 35, 40, 50),
      body: SafeArea(
        child: SingleChildScrollView(
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
                            child: Cover2(
                              image: "assets/cmps.jfif",
                              text: "",
                            ),
                            width: MediaQuery.of(context).size.width * 0.3,
                            alignment: Alignment.center,
                          )),
                    ),
                    Container(
                      child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Container(
                            child: Text(
                                "The Department of Computer Science at the American University of Beirut prepares students for advanced studies and professional careers in the dynamically changing world of computing and information technology. Our programs combine the theoretical foundations of computing with the practical knowledge of software development vital to industry, to provide broad and integrated curriculums. ",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontStyle: FontStyle.italic,
                                    fontSize: 15),
                                textAlign: TextAlign.center),
                            width: MediaQuery.of(context).size.width * 0.3,
                            alignment: Alignment.center,
                          )),
                    ),
                    Container(
                      child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Container(
                            child: Cover2(
                                text: " Safa, Haidar H.",
                                image: "assets/haidar.jpg"),
                            width: MediaQuery.of(context).size.width * 0.25,
                            alignment: Alignment.center,
                          )),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Row(children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                alignment: Alignment.topCenter,
                color: Color.fromARGB(255, 35, 40, 50),
                width: MediaQuery.of(context).size.width * 0.95,
                child: Text(
                    " The department offers a Bachelor of Science (BS) degree in computer science, designed to be completed typically in three years. It also offers a Master of Science (MS) program designed to provide advanced and specialized education in computing, offered in formats that meet the needs of both working professionals and full-time students.",
                    style: TextStyle(
                        color: Colors.white,
                        fontStyle: FontStyle.italic,
                        fontSize: 15),
                    textAlign: TextAlign.center),
              ),
            ),
          ]),
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
          coverListView(context, 'cmpsnews'),
          SizedBox(
            height: 1,
          ),
          Row(
            children: <Widget>[
              Container(
                color: Color.fromARGB(255, 35, 40, 50),
                height: MediaQuery.of(context).size.height / 2,
                width: MediaQuery.of(context).size.width,
                child: Row(
                  children: <Widget>[
                    Container(
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
                                        "https://www.aub.edu.lb/registrar/Documents/catalogue/undergraduate19-20/computerscience.pdf")));
                          },
                        )),
                  ],
                ),
              ),
            ],
          ),
        ])),
      ),
    );
  }
}
