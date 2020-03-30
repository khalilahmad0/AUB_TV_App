
import 'package:flutter/material.dart';

final List<String> generalQuestions = <String>["Are there any scholarships or financial aid offered to students and what are the basis?" ,
  "Is 'distant learning' or 'studies by correspondence' available at AUB?" ,
"We would like to visit the AUB campus and the Office of Admissions. What are the Office of Admissions operating hours and do we need to take an appointment? ",
"What are the fees incurred for ´X-major´ at AUB and what are other fees?" ,
"What is the language of instruction at AUB?",
"What kind of accommodation facilities are there on campus?" ,
"I am accepted and paid my confirmation fee, why cannot I login to AUBsis to apply for residence in student dorms?",
"I am accepted; what are the next steps that I should do?",
"How can I send my exam (ex: SAT1, IELTS, TOEFL etc.) scores to AUB?",
"Can I postpone my acceptance to a later term?",
"Why have I not received my acceptance email yet?",
"How can I pay the confirmation fee related to my acceptance?",
"Why are students not notified about the possibility to petition to add or change majors on the application form?",
"What type of communications will accepted students expect to receive?",
"Can I do IELTS to meet the English language requirement?",
"Will students be notified of their acceptance or rejection?"];

class GeneralFAQ extends StatefulWidget {
  GeneralFAQ({Key key, this.title}) :super(key: key);
  final String title;

  @override
  _GeneralFAQState createState() => _GeneralFAQState();
}

final makeBody = Container(
  child: ListView.builder(
    scrollDirection: Axis.vertical,
    shrinkWrap: true,
    itemCount: generalQuestions.length,
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
      ' ${generalQuestions[index]}',
      style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
      ),
      // subtitle: Text("Intermediate", style: TextStyle(color: Colors.white)),

      ),
      ),
      );
    },
  ),
);

class _GeneralFAQState extends State<GeneralFAQ> {
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 35, 40, 50),
//      body: makeBody,
      body: makeBody,
    );
  }
}