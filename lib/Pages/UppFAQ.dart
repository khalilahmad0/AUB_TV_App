/// ListTile

import 'package:flutter/material.dart';

class UppFAQ extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      home: new Scaffold(
        backgroundColor: Color.fromARGB(255,35,40,50),
        body: new ListView.separated(
          itemBuilder: (BuildContext context, int index) {
            return new StuffInTiles(listOfTiles[index]);
          },
          itemCount: listOfTiles.length, separatorBuilder:  (BuildContext context, int index) => const Divider(height: 10),
        ),
      ),
    );
  }
}

class StuffInTiles extends StatelessWidget {
  final MyTile myTile;
  StuffInTiles(this.myTile);

  @override
  Widget build(BuildContext context) {
    return _buildTiles(myTile);
  }

  Widget _buildTiles(MyTile t) {
    if (t.children.isEmpty)
      return Container(
          child: new ListTile(
            dense: true,
            enabled: true,
            isThreeLine: false,
            onLongPress: () => print(""),
            onTap: () => print(""),
            selected: true,
            title: new Text(t.title,style: TextStyle(color: Colors.white, fontSize: 20),),
          )
      );

    return Container(
      decoration: BoxDecoration(color: Color.fromRGBO(83, 93, 112, .9)),
      child: new ExpansionTile(
        key: new PageStorageKey<int>(3),
        backgroundColor: Color.fromARGB(255,83,93,112),
        title: new Text(t.title, style: TextStyle(color: Colors.white, fontSize: 25),),
        children: t.children.map(_buildTiles).toList(),
      ),
    );
  }
}

class MyTile {
  String title;
  List<MyTile> children;
  MyTile(this.title, [this.children = const <MyTile>[]]);
}

List<MyTile> listOfTiles = <MyTile>[
  new MyTile(
    'Can I transfer to freshman or sophomore class directly after completing the UPP program?',
    <MyTile>[
      new MyTile('After successfully passing the UPP program, a student may join directly the AUB freshman class. However, for joining sophomore, the student needs to submit to the Office of Admissions an undergraduate application with all the required documents including SAT1 scores by the set deadlines'      ),
    ],
  ),
  new MyTile(
      'I have completed Grade 11, can I apply to AUB UPP Program?',
    <MyTile>[
new MyTile("​Applicants should have completed at least twelve years of schooling, or equivalent, before joining any program at AUB including UPP.  Applicants to the UPP program must submit the UPP application form and the high school transcripts along with a high school recommendation letter.")    ],
  ),
];