import 'package:aub/Models/MyTile.dart';
import 'package:flutter/material.dart';

class TransferFAQ extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 35, 40, 50),
        title: Text("Transfer"),
      ),
      backgroundColor: Color.fromARGB(255, 35, 40, 50),
      body: Padding(
        padding: const EdgeInsets.only(top: 8.0),
        child: new ListView.separated(
          itemBuilder: (BuildContext context, int index) {
            return stuffInTiles(context, listOfTiles[index]);
          },
          itemCount: listOfTiles.length,
          separatorBuilder: (BuildContext context, int index) =>
              const Divider(height: 20),
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
    "Can an applicant transfer at the freshman or sophomore level from another university to AUB?",
    <MyTile>[
      new MyTile(
          "Students who have completed less than 30 freshman credits may apply to the freshman year at AUB.  Similarly, students who have completed less than 24 sophomore credits may apply to the sophomore year at AUB.  In both cases, SAT I and high school grades (G10, G11 and G12) will be considered for admission. Courses taken at the former university, could be given credit upon the recommendation of the department(s) concerned.​"),
    ],
  ),
  new MyTile(
    "Can any student transfer to AUB?",
    <MyTile>[
      new MyTile(
          "Students enrolled in recognized institutions of higher learning and who have completed a class equivalent to the sophomore class at AUB may be considered for admission to the junior class based on their university GPA.  Such applicants should meet the English language requirement.​"),
    ],
  ),
  new MyTile(
    "Can courses taken at another university be transferred to AUB?",
    <MyTile>[
      new MyTile(
          "Courses taken at a recognized university could be transferred if they are equivalent to courses offered at AUB under a degree-leading program and upon the recommendation of the department(s) concerned. "
          "Course equivalences are determined after submitting an AUB admission application and are usually issued with the application acceptance decision.​"),
    ],
  ),
  new MyTile(
    "What are the graduation requirements of a transfer applicant?",
    <MyTile>[
      new MyTile(
          "​Students should complete the college requirements in addition to major and credit requirements as determined by the department(s) concerned and by the Office of the Registrar."),
    ],
  ),
  new MyTile(
    "What is the minimum average required for transfer admission to AUB?",
    <MyTile>[
      new MyTile(
          "In general, the minimum GPA scores required vary among majors and admission is based on competition and availability of spaces"),
    ],
  ),
];
