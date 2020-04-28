import 'package:aub/Models/MyTile.dart';
import 'package:flutter/material.dart';

class MedicineFAQ extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 35, 40, 50),
        title: Text("Medicine"),
      ),
      backgroundColor: Color.fromARGB(255, 35, 40, 50),
      body: Padding(
        padding: const EdgeInsets.only(top: 8.0),
        child: SafeArea(
          child: new ListView.separated(
            itemBuilder: (BuildContext context, int index) {
              return stuffInTiles(context, listOfTiles[index]);
            },
            itemCount: listOfTiles.length,
            separatorBuilder: (BuildContext context, int index) =>
                const Divider(height: 20),
          ),
        ),
      ),
    );
  }
}

Widget stuffInTiles(BuildContext context, MyTile myTile) {
  return _buildTiles(myTile);
}

Widget _buildTiles(MyTile t) {
  if (t.children.isEmpty)
    return Container(
      child: RawMaterialButton(
        child: new ListTile(
          dense: true,
          enabled: true,
          isThreeLine: false,
          selected: true,
          title: new Text(
            t.title,
            style: TextStyle(color: Colors.white70, fontSize: 20),
          ),
        ),
      ),
    );

  return Container(
    decoration: BoxDecoration(color: Color.fromRGBO(83, 93, 112, .9)),
    child: new ExpansionTile(
      key: new PageStorageKey<int>(3),
      backgroundColor: Color.fromARGB(255, 83, 93, 112),
      title: new Text(
        t.title,
        style: TextStyle(color: Colors.white, fontSize: 25),
      ),
      children: t.children.map(_buildTiles).toList(),
    ),
  );
}

List<MyTile> listOfTiles = <MyTile>[
  new MyTile(
    "How many years is the MD program?",
    <MyTile>[
      new MyTile(
          "The MD program is a graduate four-year program following a 3-4 years pre-med bachelor's degree, after which the student will be awarded the degree of Doctor of Medicine.​"
          "For more details, please refer to the AUB Admissions website: ​www.aub.edu.lb/admissions or the Faculty of Medicine website: www.aub.edu.lb/fm/medicaleducation/ "),
    ],
  ),
  new MyTile(
    "What are the admission requirements to the MD program at AUB?",
    <MyTile>[
      new MyTile("Students are required to: \n"
          "1- Hold a bachelor´s degree (including the pre-medical core courses as listed in the AUB catalogue) \n​"
          "2- Take the Medical College Admission Test (MCAT) ​\n"
          "3- Meet the English language requirement​"),
    ],
  ),
  new MyTile(
    "I am doing my pre-med major at another university, can I apply to AUB MD program?",
    <MyTile>[
      new MyTile(
          "Every year AUB receives a number of applications from Lebanon and overseas from students who did not complete their bachelor studies at AUB.  Thus, you can apply to AUB MD program as long as you have completed all the pre-medical core courses as listed in the AUB catalogue and you meet the other admission requirements."
          "You may contact the school of medicine to clarify if the pre-medical courses taken outside AUB are equivalent to AUB courses:  http://www.aub.edu.lb/fm/"),
    ],
  ),
];
