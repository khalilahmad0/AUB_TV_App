
import 'package:flutter/material.dart';

final List<String> graduateQuestions = <String>["1. Getting started: How do I apply for graduate studies at AUB and when is the application submission deadline?",
"2. Required documents and exam scores submission deadlines",
"3. Decision Notification: When will the application decisions be out?",
"4. Programs: What are the graduate programs offered at AUB and for how many programs can I apply?",
"5. Educational Background: What is the meaning of a “Transcript”? When is the deadline for submitting it​?",
"6. Exam Scores: Am I required to submit any English test scores in order to apply?",
"7. Exam Scores: Other than the English test scores, are any additional standardized exam scores required?",
"8. Recommendation Letters: How many recommendation letters are required and how can I submit them?",
"9. Financial Opportunities: What is the tution at AUB? Any scholarship options?",
"10. Program Requirements: What is the meaning of a “Statement of Purpose”?",
"11. Submission: How do I submit my application?",
"12. After Being Accepted: Can I postpone my acceptance to another semester?"];

class GraduateFAQ extends StatefulWidget {
  GraduateFAQ({Key key, this.title}) :super(key: key);
  final String title;

  @override
  _GraduateFAQState createState() => _GraduateFAQState();
}

final makeBody = Container(
  child: ListView.builder(
    scrollDirection: Axis.vertical,
    shrinkWrap: true,
    itemCount: graduateQuestions.length,
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
              ' ${graduateQuestions[index]}',
              style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
            ),
          ),
        ),
      );
    },
  ),
);

class _GraduateFAQState extends State<GraduateFAQ> {
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 35, 40, 50),
//      body: makeBody,
      body: makeBody,
    );
  }
}