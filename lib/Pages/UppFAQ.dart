
import 'package:flutter/material.dart';

final List<String> uppQuestions = <String>["Can I transfer to freshman or sophomore class directly after completing the UPP program?",
"I have completed Grade 11, can I apply to AUB UPP Program?"];

class UppFAQ extends StatefulWidget {
  UppFAQ({Key key, this.title}) :super(key: key);
  final String title;

  @override
  _UppFAQState createState() => _UppFAQState();
}

final makeBody = Container(
  child: ListView.builder(
    scrollDirection: Axis.vertical,
    shrinkWrap: true,
    itemCount: uppQuestions.length,
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
              ' ${uppQuestions[index]}',
              style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
            ),
            ),
        ),
      );
    },
  ),
);

class _UppFAQState extends State<UppFAQ> {
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 35, 40, 50),
//      body: makeBody,
      body: makeBody,
    );
  }
}