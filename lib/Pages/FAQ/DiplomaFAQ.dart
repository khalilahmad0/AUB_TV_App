import 'package:aub/Models/MyTile.dart';
import 'package:flutter/material.dart';

class DiplomaFAQ extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 35, 40, 50),
        title: Text("Diploma"),
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
    "What diplomas are currently offered at AUB?",
    <MyTile>[
      new MyTile(
          "Some of the diplomas that we offer include: \n"
              "-Teaching Diploma Program​ \n"
              "-Diploma in Special Education​\n"
              "-Diploma in Educational Management and Leadership \n"
              "-Diploma in Food Security (Temporarily frozen)"),
    ],
  ),
  new MyTile(
    "I would like to apply for a diploma, do I need to take an English exam?",
    <MyTile>[
      new MyTile(
          "You will need to meet the English language requirements as detailed at https://www.aub.edu.lb/admissions/english/."),
    ],
  ),
  new MyTile(
    "I would like to apply for a teaching diploma, what are the requirements and the concentrations",
    <MyTile>[
      new MyTile(
          " Please refer to our detailed admission requirements for diploma applications that are posted at: http://www.aub.edu.lb/admissions/ .​"
      "You may refer to the diploma application form (on that page) for the list of available concentrations of the Teaching Diploma.")
    ],
  ),
];
