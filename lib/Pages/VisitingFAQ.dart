
import 'package:flutter/material.dart';

final List<String> visitingQuestions = <String>["Can a special or a visiting undergraduate student take graduate courses?",
"Can credits taken be considered towards a degree from AUB?",
"What are the minimum requirements for admission?",
"What is the number of credits allowed?",
"What kind of study abroad programs do you offer?",
"How can I take Arabic courses at AUB?",
"Will the average of courses taken as special or visiting student be considered for admissions to a regular graduate program at AUB?"];

class VisitingFAQ extends StatefulWidget {
  VisitingFAQ({Key key, this.title}) :super(key: key);
  final String title;

  @override
  _VisitingFAQState createState() => _VisitingFAQState();
}

final makeBody = Container(
  child: ListView.builder(
    scrollDirection: Axis.vertical,
    shrinkWrap: true,
    itemCount: visitingQuestions.length,
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
              ' ${visitingQuestions[index]}',
              style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
            ),
          ),
        ),
      );
    },
  ),
);

class _VisitingFAQState extends State<VisitingFAQ> {
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 35, 40, 50),
//      body: makeBody,
      body: makeBody,
    );
  }
}