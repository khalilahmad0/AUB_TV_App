
import 'package:flutter/material.dart';

final List<String> sophomoreQuestions = <String>["Are there any special requirements for Lebanese or non-Lebanese applicants to the sophomore class?",
"What are the requirements for admission to the sophomore class?",
"What certificates qualify for consideration to the sophomore class?",
"What is the minimum SAT 1 score required for admission?",
"What majors are offered at AUB",
"What other tests than SAT1 should I take for admission to AUB? Should I take any English test?",
"What tests should I take to be considered for admission to the sophomore class?",
"Did you receive my official SAT1 Scores?",
"I am completing my IGCSEs and would like to know what subjects are required by admission?",
"I was not accepted into the major that I plan to pursue at AUB, so can I petition for reconsideration?",
"Can I transfer to sophomore class directly after completing the UPP Program?"];

class SophomoreFAQ extends StatefulWidget {
 SophomoreFAQ({Key key, this.title}) :super(key: key);
  final String title;

  @override
  _SophomoreFAQState createState() => _SophomoreFAQState();
}

final makeBody = Container(
  child: ListView.builder(
    scrollDirection: Axis.vertical,
    shrinkWrap: true,
    itemCount: sophomoreQuestions.length,
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
              ' ${sophomoreQuestions[index]}',
              style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
            ),
          ),
        ),
      );
    },
  ),
);

class _SophomoreFAQState extends State<SophomoreFAQ> {
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 35, 40, 50),
//      body: makeBody,
      body: makeBody,
    );
  }
}