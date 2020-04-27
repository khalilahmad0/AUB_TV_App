
import 'package:flutter/material.dart';

final List<String> freshmanQuestions = <String>["Are there any special requirements for Lebanese or non-Lebanese applicants to the freshman class?",
"What are the requirements for admission to the freshman class?",
"What certificates qualify for consideration to the freshman class?",
"What is the minimum SAT I score required for admission?",
"What tests should I take to be considered for admission to the freshman Class?",
"Did AUB Office of Admissions receive my official SAT1 Scores?",
"What other tests than SAT1 should I take for admission to AUB? Should I take any English test?​",
"Can I transfer to Freshman class directly after completing the UPP Program?"];

class FreshmanFAQ extends StatefulWidget {
  FreshmanFAQ({Key key, this.title}) :super(key: key);
  final String title;

  @override
  _FreshmanFAQState createState() => _FreshmanFAQState();
}

final makeBody = Container(
  child: ListView.builder(
    scrollDirection: Axis.vertical,
    shrinkWrap: true,
    itemCount: freshmanQuestions.length,
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
              ' ${freshmanQuestions[index]}',
              style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
            ),
            // subtitle: Text("Intermediate", style: TextStyle(color: Colors.white)),

          ),
        ),
      );
    },
  ),
);

class _FreshmanFAQState extends State<FreshmanFAQ> {
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 35, 40, 50),
//      body: makeBody,
      body: makeBody,
    );
  }
}