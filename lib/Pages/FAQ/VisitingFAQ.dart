import 'package:aub/Models/MyTile.dart';
import 'package:flutter/material.dart';

class VisitingFAQ extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 35, 40, 50),
        title: Text("Non-Degree, Visiting, and Exchange"),
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
    "Can a special or a visiting undergraduate student take graduate courses?",
    <MyTile>[
      new MyTile(
          "On case by case review, the student may take graduate courses upon approval of the department concerned."),
    ],
  ),
  new MyTile(
    "Can credits taken be considered towards a degree from AUB?",
    <MyTile>[
      new MyTile(
          "​Credits taken at AUB may be considered toward AUB degrees if the student reapplies for admission as a regular student, and is accepted based on the admission criteria."),
    ],
  ),
  new MyTile(
    "What are the minimum requirements for admission?",
    <MyTile>[
      new MyTile(
          "​Students must have a high school diploma, school leaving certificate, government secondary school certificate or higher level of education recognized by AUB.  Students must have completed at least one term at another university recognized by AUB. "),
    ],
  ),
  new MyTile(
    "What is the number of credits allowed?",
    <MyTile>[
      new MyTile(
          "Students may normally take up to 17 undergraduate credits or 9 graduate credits per semester (for a maximum of 2 terms)."),
    ],
  ),
  new MyTile(
    "What kind of study abroad programs do you offer?",
    <MyTile>[
      new MyTile(
          "Students registered in recognized institutions of higher learning may wish to take courses at AUB without seeking a degree from the university. Those may apply for special not working for a degree or visiting/exchange status.​"),
    ],
  ),
  new MyTile(
    "How can I take Arabic courses at AUB?",
    <MyTile>[
      new MyTile(
          "To join Arabic courses at AUB, non-degree students can consider the following options:\n"
          "You may apply as a non-degree/visiting/exchange student. You may check the detailed admission requirements and process at: https://www.aub.edu.lb/admissions/applications/Pages/SpecialVisiting.aspx\n"
          "You might be interested otherwise in short courses which are usually offered by the Continuing Education Center (CEC). You may review the information and contact CEC for details at:"
          "http://www.aub.edu.lb/rep/cec/ \n"
          "If you are looking for Arabic summer courses then you might be interested in AUB's Summer Arabic Program, please check the details at: http://www.aub.edu.lb/fas/cames/sap/ ​​"),
    ],
  ),
  new MyTile(
    "Will the average of courses taken as special or visiting student be considered for admissions to a regular graduate program at AUB?",
    <MyTile>[
      new MyTile(
          "​In general, that average is not considered towards admissions; however, for borderline cases and on a case by case basis the admission committee might consider this average along with other criteria for admission to regular status."),
    ],
  ),
];
