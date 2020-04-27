import 'package:aub/Pages/DetailPage.dart';
import 'package:aub/Pages/FAFS.dart';
import 'package:aub/Pages/FAS.dart';
import 'package:aub/Pages/FHS.dart';
import 'package:aub/Pages/FM.dart';
import 'package:aub/Pages/MSFEA.dart';
import 'package:aub/Pages/OSB.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:aub/Widgets/Cover2.dart';

class CatalogueTab extends StatefulWidget {
  @override
  _CatalogueTabState createState() => _CatalogueTabState();

}



class _CatalogueTabState extends State<CatalogueTab> {
    Widget build(BuildContext context){
    List<Cover2> myList = List<Cover2>();
    myList.add(Cover2(text: "Faculty of Arts and Sciences (FAS)", image:"assets/FAS.JPG" ,  onTap: () {Navigator.push(context, MaterialPageRoute(builder: (context) => FAS()));}));
    myList.add(Cover2(text: "Faculty of Agricultural and Food Sciences (FAFS)", image:"assets/FAFS.jpg", onTap:() {Navigator.push(context, MaterialPageRoute(builder: (context) => FAFS()));}));
    myList.add(Cover2(text: "Faculty of Health Sciences (FHS)", image:"assets/FHS.jpg",  onTap:() {Navigator.push(context, MaterialPageRoute(builder: (context) => FHS()));}));
    myList.add(Cover2(text: "Faculty of Medicine (FM)", image:"assets/FM.jpg", onTap:() {Navigator.push(context, MaterialPageRoute(builder: (context) => FM()));}));
    myList.add(Cover2(text: "Maroun Semaan Faculty of Engineering and Architecture (MSFEA)", image:"assets/MSFEA.jpg",  onTap:() {Navigator.push(context, MaterialPageRoute(builder: (context) => MSFEA()));}));
    myList.add(Cover2(text: "Suliman S. Olayan School of Business (OSB)", image:"assets/OSB.jpg", onTap:() {Navigator.push(context, MaterialPageRoute(builder: (context) => OSB()));}));

    return new Scaffold(
    backgroundColor: Color.fromARGB(255, 35, 40, 50),
    body: new GridView.count(
    crossAxisCount: 4,
    children: myList,
    ),
    );
  }

}

