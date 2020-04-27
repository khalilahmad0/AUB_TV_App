
import 'package:flutter/material.dart';

final List<String> generalQuestions = <String>[
];
/// ListTile

class GeneralFAQ extends StatelessWidget {
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
            title: new Text(t.title,style: TextStyle(color: Colors.redAccent, fontSize: 20),),
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
    "Are there any scholarships or financial aid offered to students and what are the basis?" ,
    <MyTile>[
      new MyTile(
"Different financial aid packages and scholarships are available at AUB.You may review the information and contact the Office of Financial Aid for details regarding your financial aid/scholarship questions, at: http://www.aub.edu.lb/faid/ and faid@aub.edu.lb ."
      ),
    ],
  ),
  new MyTile(
    "Is 'distant learning' or 'studies by correspondence' available at AUB?" ,
    <MyTile>[
      new MyTile("​Unless stated otherwise for a specific diploma/course (ex: Pro-Green Diploma), in general, regular attendance in classes, lectures, labs, and seminars is mandatory to qualify for graduation with a degree from AUB.  No distant learning or online degrees are offered at AUB."),
    ],
  ),
  new MyTile(
    "We would like to visit the AUB campus and the Office of Admissions. What are the Office of Admissions operating hours and do we need to take an appointment? ",
    <MyTile>[
      new MyTile(
"You are welcome to visit the AUB campus and make a tour of it. You can arrange/schedule a tour with the Visitors' Bureau by email to sm15@aub.edu.lb. While, at any time, you may check the virtual campus tour at http://www.aub.edu.lb/_layouts/15/aub360visit/.​However, no appointment is required to visit the Office of Admissions;  you are welcome anytime during the office hours which can be reviewed along with campus location information at:​ http://www.aub.edu.lb/admissions/Pages/contact​​​.aspx")
    ],
  ),
  new MyTile(
    "What are the fees incurred for ´X-major´ at AUB and what are other fees?" ,
    <MyTile>[
new MyTile("​Please refer to the online university catalogue (https://www.aub.edu.lb/academics/pages/majors_programs.aspx​) to know the number of credits require by a specific major and you may also check the Tuition calculator or the tuition per credit costs posted at: https://www.aub.edu.lb/admissions/Pages/TuitionFinancialAssistance.aspx​")    ],
  ),
  new MyTile(
    "What is the language of instruction at AUB?",
    <MyTile>[
new MyTile("​All courses are taught in the English language except Arabic courses.")    ],
  ),
  new MyTile(
    "What kind of accommodation facilities are there on campus?" ,
    <MyTile>[
new MyTile("​There are six residence halls on campus (four for women and two for men) in addition to one off campus (for women). For more information, please contact the Office of Student Housing at http://www.aub.edu.lb/sao/housing/")    ],
  ),
  new MyTile(
    "I am accepted and paid my confirmation fee, why cannot I login to AUBsis to apply for residence in student dorms?",
    <MyTile>[
new MyTile("Before attending New Student Orientation and for the purpose of applying for residence in the students dorms only, you can access AUBsis with your default AUBsis Pin which is your birthdate in the format MMDDYY (ex: for 5 Dec 2001, default pin is 120501) after 1 day of processing your enrollment confirmation form at the Office of Admissions.​If you are unable to login with the default pin then please send a request by email to the Office of the Registrar registrar@aub.edu.lb to reset it for you.  Upon reset, you would be able to login to AUBsis using the default pin.​")    ],
  ),
  new MyTile(
    "I am accepted; what are the next steps that I should do?",
    <MyTile>[
new MyTile("In general, all the registration steps will be communicated to you by email in due time.​If you are interested in applying to the AUB dorms, then you should check with the AUB Student Housing on the relevant deadlines as soon as you receive your acceptance email, as dorms deadlines are usually early: http://www.aub.edu.lb/sao/housing/.   Please also note that you may apply to AUB Student Housing (dorms) upon submission of your confirmation form.​After submission of your confirmation form (details per your acceptance email), we will send you (about 1 month before the start of classes) a welcome email that will contain additional information regarding new student orientation, course registration, academic advising among other important information.​You should plan to arrive to AUB for the new student orientation which is usually one week before the start of classes.")    ],
  ),
  new MyTile(
    "How can I send my exam (ex: SAT1, IELTS, TOEFL etc.) scores to AUB?",
    <MyTile>[
new MyTile("Your scores needs to be sent officially to AUB (ETS Code 0902) directly from the organization administering the test; you should also send your unofficial scores showing your full name (ex: as printed/downloaded from the website of the organization administering the test) by email to AUB.​For SAT1 Scores, please refer to the below document for details on how to properly send your SAT1 Scores: https://aub.edu.lb/admissions/applications/Documents/HowToSendSAT1Scores.pdf")    ],),
  new MyTile(
    "Can I postpone my acceptance to a later term?",
    <MyTile>[
new MyTile("​You may request to postpone your acceptance by one term; by replying to your acceptance email and requesting it.  We will review your request and provide you feedback or confirmation regarding your postponement request.")    ],
  ),
  new MyTile(
    "Why have I not received my acceptance email yet?",
    <MyTile>[
new MyTile("Accepted students will receive their acceptance by email.  If you have not received your acceptance by email then please check that the acceptance email didn't get routed to your junk email folder.  ​If you cannot find it, then please email your AUB application ID number and your correct email address to admissions@aub.edu.lb (undergraduate acceptances) or grad-admissions@aub.edu.lb (for graduate acceptances) so we can correct your email if necessary and re-send your acceptance email.​It is very important that you submit a correct email address on your application form as important notifications regarding your application will be sent by email only.​")    ],
  ),
  new MyTile(
    "How can I pay the confirmation fee related to my acceptance?",
    <MyTile>[
new MyTile("Each accepted student w​ill receive an acceptance email with a link to a confirmation form and a payment-methods document.   ​The confirmation form indicates the amount and due date for submitting the confirmation to the Office of Admissions.  ​The payment methods document lists the different options in paying the confirmation fee.​We recommend using the bank transfer option in the payment methods document because you can initiate the payment from your bank,submit your confirmation/bank-receipt by email, and get an email reply indicating successful processing of your enrollment.​")    ],
  ),
  new MyTile(
    "Why are students not notified about the possibility to petition to add or change majors on the application form?",
    <MyTile>[
new MyTile("​AUB does not email students about this petition process because this may not apply to every applicant. However, accepted undergraduate students have up to one month before their enrollment confirmation deadline to petition for consideration to other majors")    ],
  ),
  new MyTile(
    "What type of communications will accepted students expect to receive?",
    <MyTile>[
new MyTile("​Please refer to our acceptance page for details on the communications we send to our accepted students: http://www.aub.edu.lb/admissions/acceptances/")    ],
  ),
  new MyTile(
    "Can I do IELTS to meet the English language requirement?",
    <MyTile>[
new MyTile("IELTS can be considered to satisfy the AUB English language requirement.  The required IELTS minimum scores or additional requirements can be viewed at https://www.aub.edu.lb/admissions/english/")    ],
  ),
  new MyTile(
    "Will students be notified of their acceptance or rejection?",
        <MyTile>[
new MyTile("Undergraduate applicants are only notified of their acceptance and hence rejection letters are not sent to applicants.  ​Graduate applicants will be notified of their acceptance or rejection.")    ],
  ),
];

