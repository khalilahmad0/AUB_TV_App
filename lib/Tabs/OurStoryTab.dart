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
      body: SafeArea(
        child: SingleChildScrollView(
            child: Column(children: <Widget>[
          Row(
            children: <Widget>[
              Container(
                color: Color.fromARGB(255, 35, 40, 50),
                height: MediaQuery.of(context).size.height / 2,
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
                                    image: AssetImage('assets/aublogo.png'))),
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
                            decoration: new BoxDecoration(
                                image: new DecorationImage(
                                    image: AssetImage('assets/team1.jpeg'),
                                    fit: BoxFit.fill)),
//                        color: Color.fromARGB(255, 35, 40, 50),
                            width: MediaQuery.of(context).size.width * 0.325,
                            alignment: Alignment.center,
                          )),
                    ),
                    Container(
                      child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Container(
                            margin: new EdgeInsets.all(8.0),
                            decoration: new BoxDecoration(
                                image: new DecorationImage(
                                    image: AssetImage('assets/FASlogo.jfif'),
                                    fit: BoxFit.fill)),
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
          Container(
            color: Color.fromARGB(255, 35, 40, 50),
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width / 1.5,
            child: Text(
                " The  AUB TV app is a group project that was completed in the CMPS 253 course, given by Dr. Mahmoud Bdeir. The team is made of 4 members majoring in computer science at AUB: Khalil Al Ahmad, George Yeranjian, Mounir El Tannir and Marwa Karaki. We all met in a computer lab for a computer science course where we became good friends. The team directly clicked and it was obvious that if we all put in the effort, it would be easy to achieve great things since the communication was already there.  Enjoy the application!",
                style: TextStyle(color: Colors.white70, fontSize: 16),
                textAlign: TextAlign.center),
          ),
        ])),
      ),
    );
  }
}
