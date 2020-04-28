import 'package:aub/Models/MyTile.dart';
import 'package:flutter/material.dart';

class GraduateFAQ extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 35, 40, 50),
        title: Text("Graduate"),
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
    "Graduate FAQ",
    <MyTile>[
      new MyTile("FAQ for Masters or PhD applicants can be reviewed at:\n"
          "http://www.aub.edu.lb/graduatecouncil/Pages/faq.aspx"),
    ],
  ),
];
