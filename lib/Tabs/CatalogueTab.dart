import 'package:aub/Pages/DetailPage.dart';
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
    myList.add(Cover2(text: "Faculty of Arts and Sciences (FAS)", image:"assets/FAS.JPG" ,  onTap: null));
    myList.add(Cover2(text: "Faculty of Agricultural and Food Sciences (FAFS)", image:"assets/FAFS.jpg", onTap: null));
    myList.add(Cover2(text: "Faculty of Health Sciences (FHS)", image:"assets/FHS.jpg", onTap: null));
    myList.add(Cover2(text: "Faculty of Medicine (FM)", image:"assets/FM.jpg", onTap: null));
    myList.add(Cover2(text: "Rafic Hariri School of Nursing", image:"assets/HSN.jpg", onTap: null));
    myList.add(Cover2(text: "Maroun Semaan Faculty of Engineering and Architecture (MS​FEA)", image:"assets/MSFEA.jpg", onTap: null));
    myList.add(Cover2(text: "Suliman S. Olayan School of Business (OSB)", image:"assets/OSB.jpg", onTap: null));

    return new Scaffold(
      backgroundColor: Color.fromARGB(255, 35, 40, 50),
      body: new GridView.count(
        crossAxisCount: 4,
        children: myList,
      ),
    );
  }

}

