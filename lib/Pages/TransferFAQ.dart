
import 'package:flutter/material.dart';

final List<String> transferQuestions = <String>["Can an applicant transfer at the freshman or sophomore level from another university to AUB?",
"Can any student transfer to AUB?",
"Can courses taken at another university be transferred to AUB?",
"What are the graduation requirements of a transfer applicant?",
"What is the minimum average required for transfer admission to AUB?"];

class TransferFAQ extends StatefulWidget {
  TransferFAQ({Key key, this.title}) :super(key: key);
  final String title;

  @override
  _TransferFAQState createState() => _TransferFAQState();
}

final makeBody = Container(
  child: ListView.builder(
    scrollDirection: Axis.vertical,
    shrinkWrap: true,
    itemCount: transferQuestions.length,
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
              ' ${transferQuestions[index]}',
              style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
            ),
          ),
        ),
      );
    },
  ),
);

class _TransferFAQState extends State<TransferFAQ> {
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 35, 40, 50),
//      body: makeBody,
      body: makeBody,
    );
  }
}