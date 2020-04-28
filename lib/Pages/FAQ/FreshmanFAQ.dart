import 'package:flutter/material.dart';
import 'package:aub/Models/MyTile.dart';

class FreshmanFAQ extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 35, 40, 50),
        title: Text("Freshman"),
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
    "Are there any special requirements for Lebanese or non-Lebanese applicants to the freshman class?",
    <MyTile>[
      new MyTile(
          "​A Lebanese or non-Lebanese applicant to the freshman class needs to obtain a statement (permission) from the Equivalence Committee of the Lebanese Ministry of Education (https://www.mehe.gov.lb/en/Pages/Transactions/EquivalenceTypes.aspx) allowing her/him to join the freshman class.  Moreover, during the freshman year at AUB or during G12 at school, the SAT II subject tests as determined by the track chosen (Arts or Sciences) must be taken and a minimum required total score on both SATI and SATII must be achieved.  For details please refer to the Admission Manual posted at https://aub.edu.lb/admissions/Pages/Brochure.aspx"),
    ],
  ),
  new MyTile(
    "What are the requirements for admission to the freshman class?",
    <MyTile>[
      new MyTile(
          "To apply to the freshman class, AUB requires the school grades for the 10th and 11th Grades plus the SAT I scores.  In addition, two recommendation letters and two written essays need to be provided along with the application form.  Both SAT I scores and school grades are equally weighted when evaluating applications for admission. For details please refer to the admission requirements at "
          "https://www.aub.edu.lb/admissions/applications/Pages/Freshman.aspx​"),
    ],
  ),
  new MyTile(
    "What certificates qualify for consideration to the freshman class?",
    <MyTile>[
      new MyTile(
          "Students completing 12 years of schooling and doing one of the following programs: High School Program, SAT program, AP program, IGCSE (O Levels), IB Certificate or any other school leaving certificate (other than Lebanese Baccalaureate) can apply to the freshman program at AUB. Freshman credits equivalences may be given towards the advanced level courses such as AP, IB (HL Subjects), GCE (A Level subjects) etc")
    ],
  ),
  new MyTile(
    "What is the minimum SAT I score required for admission?",
    <MyTile>[
      new MyTile(
          "For early admission, which is criteria based admission, the minimum required SAT1 score may be viewed at the admission requirements link below. "
          "However, for regular admission, there is no required SAT1 score as regular admission is competition-based and thus depends on the scores of students applying for a given term and availability of places. "
          "For details please refer to the Admission Requirements at http://www.aub.edu.lb/admissions/​")
    ],
  ),
  new MyTile(
    "What tests should I take to be considered for admission to the freshman Class?",
    <MyTile>[
      new MyTile(
          "The Scholastic Assessment Test (SAT I) is required for admission decision and it cannot be substituted by any other test.  You can review details about SAT1 on the College Board website: www.collegeboard.org.​"
          "Please note that the registration deadlines for SAT1 are usually set about a month ahead of the actual exam date. Please also note that when applying for a given term at AUB, you have to meet the \"Last SAT1 session date\" considered for that term (thus SAT1 exams done after that Last SAT1 Session date will not be considered)."
          "It is required to register at least once, the optional SAT1 Essay section for the purpose of the English language requirements (http://​www.aub.edu.lb/admissions/english/).​​")
    ],
  ),
  new MyTile(
    "Did AUB Office of Admissions receive my official SAT1 Scores?",
    <MyTile>[
      new MyTile(
          "The applicant has to make sure that he has in the first place, also submitted (with the application form or by email) his/her unofficial SAT1 scores and the Office of Admissions will confirm receiving them as such."
          "Regarding the official scores, as long as you ordered successfully your SAT1 official scores from College Board to be sent to AUB (ETS Code 0902), then please do not worry about when they will arrive as they will take time to arrive and be processed by us."
          "Please refer to below document for details on how to properly send your SAT1 Scores: http://www.aub.edu.lb/admissions/applications/Documents/HowToSendSAT1Scores.pdf​​")
    ],
  ),
  new MyTile(
    "What other tests than SAT1 should I take for admission to AUB? Should I take any English test?",
    <MyTile>[
      new MyTile(
          "​Meeting the English language requirement is a condition to register at AUB if you were accepted.  You can meet the English language requirement with your SAT1 and/or with alternatives English only (ex: TOEFL, IELTS, AUB-EN​ etc.) exams.  You may review, the required English exams scores to meet the English language requirement at http://www.aub.edu.lb/admissions/english/")
    ],
  ),
  new MyTile(
    "Can I transfer to Freshman class directly after completing the UPP Program?",
    <MyTile>[
      new MyTile(
          "After successfully passing the UPP program, a student may join directly the AUB Freshman class without the need to take SAT1 exam.")
    ],
  ),
];
