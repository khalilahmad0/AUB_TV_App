import 'package:aub/Pages/FAQ/DiplomaFAQ.dart';
import 'package:aub/Pages/FAQ/GeneralFAQ.dart';
import 'package:aub/Pages/FAQ/FreshmanFAQ.dart';
import 'package:aub/Pages/FAQ/GraduateFAQ.dart';
import 'package:aub/Pages/FAQ/MedicineFAQ.dart';
import 'package:aub/Pages/FAQ/SecondDegreeFAQ.dart';
import 'package:aub/Pages/FAQ/SophomoreFAQ.dart';
import 'package:aub/Pages/FAQ/TransferFAQ.dart';
import 'package:aub/Pages/FAQ/UppFAQ.dart';
import 'package:aub/Pages/FAQ/VisitingFAQ.dart';
import 'package:aub/Widgets/Cover2.dart';
import 'package:flutter/material.dart';

class FAQTab extends StatefulWidget {
  FAQTab({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _FAQTabState createState() => _FAQTabState();
}

class _FAQTabState extends State<FAQTab> {
  @override
  Widget build(BuildContext context) {
    List<Cover2> myList = List<Cover2>();
    myList.add(Cover2(
        text: "General",
        image: "",
        onTap: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => GeneralFAQ()));
        }));
    myList.add(Cover2(
        text: "UPP",
        image: "",
        onTap: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => UppFAQ()));
        }));
    myList.add(Cover2(
        text: "Freshman",
        image: "",
        onTap: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => FreshmanFAQ()));
        }));
    myList.add(Cover2(
        text: "Sophomore",
        image: "",
        onTap: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => SophomoreFAQ()));
        }));
    myList.add(Cover2(
        text: "Transfer",
        image: "",
        onTap: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => TransferFAQ()));
        }));
    myList.add(Cover2(
        text: "Second Degree",
        image: "",
        onTap: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => SecondDegreeFAQ()));
        }));
    myList.add(Cover2(
        text: "Non-Degree, Visiting and \n Exchange",
        image: "",
        onTap: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => VisitingFAQ()));
        }));
    myList.add(Cover2(
        text: "Diploma",
        image: "",
        onTap: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => DiplomaFAQ()));
        }));
    myList.add(Cover2(
        text: "Medicine",
        image: "",
        onTap: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => MedicineFAQ()));
        }));
    myList.add(Cover2(
        text: "Graduate",
        image: "",
        onTap: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => GraduateFAQ()));
        }));

    return Scaffold(
      backgroundColor: Color.fromARGB(255, 35, 40, 50),
      body: new GridView.count(
        crossAxisCount: 4,
        childAspectRatio: 1.5,
        children: myList,
      ),
    );
  }
}
