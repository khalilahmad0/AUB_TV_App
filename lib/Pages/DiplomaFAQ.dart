
import 'package:flutter/material.dart';

final List<String> diplomaQuestions = <String>["What diplomas are currently offered at AUB?",
"I would like to apply for a diploma, do I need to take an English exam?",
"I would like to apply for a teaching diploma, what are the requirements and the concentrations"];

class DiplomaFAQ extends StatefulWidget {
  DiplomaFAQ({Key key, this.title}) :super(key: key);
  final String title;

  @override
  _DiplomaFAQState createState() => _DiplomaFAQState();
}

final makeBody = Container(
  child: ListView.builder(
    scrollDirection: Axis.vertical,
    shrinkWrap: true,
    itemCount: diplomaQuestions.length,
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
              ' ${diplomaQuestions[index]}',
              style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
            ),
          ),
        ),
      );
    },
  ),
);

class _DiplomaFAQState extends State<DiplomaFAQ> {
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 35, 40, 50),
//      body: makeBody,
      body: makeBody,
    );
  }
}