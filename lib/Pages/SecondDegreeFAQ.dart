
import 'package:flutter/material.dart';

final List<String> secondDegreeQuestions = <String>["Can I apply as a transfer student to another major when I already have a bachelor degree?",
"I am an AUB graduate and want to apply to AUB for a second degree, do I submit an application to the Office of Admissions like other second degree applicants?"];

class SecondDegreeFAQ extends StatefulWidget {
  SecondDegreeFAQ({Key key, this.title}) :super(key: key);
  final String title;

  @override
  _SecondDegreeFAQState createState() => _SecondDegreeFAQState();
}

final makeBody = Container(
  child: ListView.builder(
    scrollDirection: Axis.vertical,
    shrinkWrap: true,
    itemCount: secondDegreeQuestions.length,
    itemBuilder: (BuildContext context, int index) {
      return Card(
        elevation: 8.0,
        margin: new EdgeInsets.symmetric(horizontal: 10.0, vertical: 6.0),
        child: Container(
          decoration: BoxDecoration(color: Color.fromRGBO(64, 75, 96, .9)),
          child: ListTile(

            contentPadding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
            leading: Container(
              padding: EdgeInsets.only(right: 12.0),
              decoration: new BoxDecoration(
                  border: new Border(
                      right: new BorderSide(width: 1.0, color: Colors.white24))),
              child: Icon(Icons.keyboard_arrow_down, color: Colors.white),
            ),
            title: Text(
              ' ${secondDegreeQuestions[index]}',
              style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
            ),
          ),
        ),
      );
    },
  ),
);

class _SecondDegreeFAQState extends State<SecondDegreeFAQ> {
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 35, 40, 50),
//      body: makeBody,
      body: makeBody,
    );
  }
}