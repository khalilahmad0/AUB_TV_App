import 'package:aub/Models/MyTile.dart';
import 'package:flutter/material.dart';

class SophomoreFAQ extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 35, 40, 50),
        title: Text("Sophomore"),
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
    'Are there any special requirements for Lebanese or non-Lebanese applicants to the sophomore class?',
    <MyTile>[
      new MyTile(
          "Lebanese or non-Lebanese applicants to the sophomore class need to provide evidence of having successfully passed the Lebanese Baccalaureat Part II or its equivalent. Lebanese applicants holding foreign certificates should obtain the equivalence of the Lebanese Baccalaureat Part II from the Equivalence Committee of the Lebanese​ Ministry of Education (https://www.mehe.gov.lb/en/Pages/Transactions/EquivalenceTypes.aspx) prior to registration at AUB.")
    ],
  ),
  new MyTile(
    "What are the requirements for admission to the sophomore class?",
    <MyTile>[
      new MyTile(
          "To apply to the Sophomore class, AUB requires the school grades for the 10th and 11th Grades plus the SAT I scores.  Both SAT I scores and school grades are equally weighted when evaluating applications for admission.​ For details please refer to the admission requirements at http://www.aub.edu.lb/admissions/applications/Pages/Sophomore.aspx")
    ],
  ),
  new MyTile(
    "What certificates qualify for consideration to the sophomore class?",
    <MyTile>[
      new MyTile(
          "Students completing 12 years of schooling and accomplishing one of the following programs: Lebanese Baccalaureate, French Baccalaureate, Syrian Baccalaureate, Jordanian Tawjihi, German Abitur, Official Government Secondary School leaving Certificate, full IB Diploma or IGCSE/GCE (2 A levels or 4 AS levels), Completion of the freshman class at a recognized institution of higher education, can apply direc​​tly to the sophomore level at AUB.")
    ],
  ),
  new MyTile(
    "What is the minimum SAT 1 score required for admission?",
    <MyTile>[
      new MyTile(
          "For early admission, which is a criteria based admission, the minimum required SAT1 score may be viewed at the admission requirements link below. "
          "However, for regular admission, there is no required SAT1 score as regular admission is competition based and thus depends on the scores of students applying for a given term and on availability of places.\n"
          "For details please refer to the Admission Requirements at http://www.aub.edu.lb/admissions/​")
    ],
  ),
  new MyTile(
    "What majors are offered at AUB?",
    <MyTile>[
      new MyTile(
          "The list of majors that you can apply to is included in our application form.​"
          "For detailed information on the majors and programs currently offered at AUB please refer to AUB Majors and Programs webpage at: https://www.aub.edu.lb/academics/pages/majors_programs.aspx​")
    ],
  ),
  new MyTile(
    "What tests should I take to be considered for admission to the sophomore class?",
    <MyTile>[
      new MyTile(
          "The Scholastic Assessment Test (SAT 1) is required for admission decision and it cannot be substituted by any other test.  You can review details about SAT1 on the College Board website: www.collegebo​​ard.org.​"
          "Please note that the registration deadlines for SAT1 are usually set about a month ahead of the actual exam date. Please also note that when applying for a given term at AUB, you have to meet the \"Last SAT1 session date\" considered for that term (thus SAT1 exams done after that last SAT1 session date will not be considered). It is required to register at least once, the optional SAT1 Essay section for the purpose of the English language requirement ")
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
    "Did you receive my official SAT1 Scores?",
    <MyTile>[
      new MyTile(
          "The applicant has to make sure that he has in the first place, also submitted (with the application form or by email) his/her unofficial SAT1 scores and the Office of Admissions will confirm receiving them as such."
          "Regarding the official scores, as long as you ordered successfully your SAT1 official scores from College Board to be sent to AUB (ETS Code 0902), then please do not worry about when they will arrive as they will take time to arrive and be processed by us."
          "Please refer to below document for details on how to properly send your SAT1 Scores: http://www.aub.edu.lb/admissions/applications/Documents/HowToSendSAT1Scores.pdf​​")
    ],
  ),
  new MyTile(
    "I am completing my IGCSEs and would like to know what subjects are required by admission?",
    <MyTile>[
      new MyTile(
          "Students completing 12 years of schooling and doing IGCSE (O Levels) can apply to the freshman program at AUB. However, students completing 12 years of schooling and doing IGCSE/GCE (2 A levels or 4 AS levels for certain majors) can apply directly to the sophomore level at AUB.  You may check the details on the required subjects for each major on last page of the Admission Manual posted at https://aub.edu.lb/admissions/Pages/Brochure.aspx​")
    ],
  ),
  new MyTile(
    "I was not accepted into the major that I plan to pursue at AUB, so can I petition for reconsideration?",
    <MyTile>[
      new MyTile(
          "In general, you can petition (usually latest by 1 month before the confirmation deadline) to add majors which were not considered or reviewed by our admission committee and as per the maximum allowed on the application form."
          "For majors that were already reviewed then a petition will not be accepted unless there is a change in the student application file (ex: addition of missing grades, SAT1 scores, legacy information [parent or grandparents are AUB Alumni] ) that would affect the application decision."
          "Petitions should be sent in an email, by replying to your acceptance email or application update email, and students will be notified of the petition outcome by email as well.​")
    ],
  ),
  new MyTile(
    "Can I transfer to sophomore class directly after completing the UPP Program?",
    <MyTile>[
      new MyTile(
          "After successfully passing the UPP program, a student cannot join directly the AUB sophomore class. The student needs to submit to the Office of Admissions an undergraduate application with all the required documents including SAT1 scores by the application deadline.")
    ],
  ),
];
