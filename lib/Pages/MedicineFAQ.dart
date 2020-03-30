
import 'package:flutter/material.dart';

final List<String> medicineQuestions = <String>["How many years is the MD program?",
"What are the admission requirements to the MD program at AUB?",
"I am doing my pre-med major at another university, can I apply to AUB MD program?"];

class MedicineFAQ extends StatefulWidget {
  MedicineFAQ({Key key, this.title}) :super(key: key);
  final String title;

  @override
  _MedicineFAQState createState() => _MedicineFAQState();
}

final makeBody = Container(
  child: ListView.builder(
    scrollDirection: Axis.vertical,
    shrinkWrap: true,
    itemCount: medicineQuestions.length,
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
              ' ${medicineQuestions[index]}',
              style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
            ),
          ),
        ),
      );
    },
  ),
);

class _MedicineFAQState extends State<MedicineFAQ> {
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 35, 40, 50),
//      body: makeBody,
      body: makeBody,
    );
  }
}