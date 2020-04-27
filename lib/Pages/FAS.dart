import 'package:aub/Pages/DetailPage.dart';
import 'package:aub/Pages/FAS.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:aub/Widgets/Cover2.dart';

import 'PDFViewer.dart';

class FAS extends StatefulWidget {
  @override
  _FASState createState() => _FASState();

}





class _FASState extends State<FAS> {
  Widget build(BuildContext context){
    List<Cover2> myList = List<Cover2>();
    myList.add(Cover2(text: "Anthropology", image:"" ,  onTap: () {Navigator.push(context, MaterialPageRoute(builder: (context) => PDFViewer("https://www.aub.edu.lb/registrar/Documents/catalogue/undergraduate16-17/sams.pdf")));}));
    myList.add(Cover2(text: "Applied Math", image:"", onTap:() {Navigator.push(context, MaterialPageRoute(builder: (context) => PDFViewer("http://www.orimi.com/pdf-test.pdf")));}));
    myList.add(Cover2(text: "Arab and Middle Eastern History", image:"", onTap: null));
    myList.add(Cover2(text: "Arabic Language and Literature", image:"", onTap: null));
    myList.add(Cover2(text: "Archaeology", image:"", onTap: null));
    myList.add(Cover2(text: "Art History", image:"", onTap: null));
    myList.add(Cover2(text: "Art History and Curating", image:"", onTap: null));
    myList.add(Cover2(text: "Biology", image:"" ,  onTap: () {Navigator.push(context, MaterialPageRoute(builder: (context) => FAS()));}));
    myList.add(Cover2(text: "Cell and Molecular Biology", image:"", onTap: null));
    myList.add(Cover2(text: "Chemistry", image:"", onTap: null));
    myList.add(Cover2(text: "Clinical Psychology", image:"", onTap: null));
    myList.add(Cover2(text: "Computational Science", image:"", onTap: null));
    myList.add(Cover2(text: "Computer Science", image:"", onTap: null));
    myList.add(Cover2(text: "Economics", image:"", onTap: null));
    myList.add(Cover2(text: "Education", image:"", onTap: null));
    myList.add(Cover2(text: "Education/Elementary", image:"" ,  onTap: () {Navigator.push(context, MaterialPageRoute(builder: (context) => FAS()));}));
    myList.add(Cover2(text: "Educational Management and \n Leadership Diplomas", image:"", onTap: null));
    myList.add(Cover2(text: "English Language", image:"", onTap: null));
    myList.add(Cover2(text: "English Literature", image:"", onTap: null));
    myList.add(Cover2(text: "Environmental Policy Planning", image:"", onTap: null));
    myList.add(Cover2(text: "Financial Economics", image:"", onTap: null));
    myList.add(Cover2(text: "Geology", image:"", onTap: null));
    myList.add(Cover2(text: "History​", image:"", onTap: null));
    myList.add(Cover2(text: "Islamic Studies", image:"", onTap: null));
    myList.add(Cover2(text: "Mathematics", image:"" ,  onTap: () {Navigator.push(context, MaterialPageRoute(builder: (context) => FAS()));}));
    myList.add(Cover2(text: "Media and Communication", image:"", onTap: null));
    myList.add(Cover2(text: "Media Studies", image:"", onTap: null));
    myList.add(Cover2(text: "Middle Eastern Studies", image:"", onTap: null));
    myList.add(Cover2(text: "Petroleum Studies", image:"", onTap: null));
    myList.add(Cover2(text: "Philosophy", image:"", onTap: null));
    myList.add(Cover2(text: "Physics", image:"", onTap: null));
    myList.add(Cover2(text: "Political Studies", image:"", onTap: null));
    myList.add(Cover2(text: "Psychology", image:"", onTap: null));
    myList.add(Cover2(text: "Public Administration", image:"", onTap: null));
    myList.add(Cover2(text: "Public Policy and International Affairs", image:"" ,  onTap: () {Navigator.push(context, MaterialPageRoute(builder: (context) => FAS()));}));
    myList.add(Cover2(text: "Sociology", image:"", onTap: null));
    myList.add(Cover2(text: "Sociology-Anthropology", image:"", onTap: null));
    myList.add(Cover2(text: "Statistics", image:"", onTap: null));
    myList.add(Cover2(text: "Studio Arts", image:"", onTap: null));
    myList.add(Cover2(text: "Special Education", image:"", onTap: null));
    myList.add(Cover2(text: "Teaching Diploma", image:"", onTap: null));
    myList.add(Cover2(text: "Theoretical Physics", image:"", onTap: null));
    myList.add(Cover2(text: "Transnational American Studies", image:"", onTap: null));


    return new Scaffold(

      backgroundColor: Color.fromARGB(255, 35, 40, 50),
      body: Stack(
          children: <Widget>[
            Container(
              child: Center(
              child: new Image.asset(
                'assets/background.jpg',
                width: 1000,
                height: 1000,
                fit: BoxFit.fill,
              ),),
            ),
            new GridView.count(
              childAspectRatio: 4.5,
              crossAxisCount: 3,
              children: myList,
            ),
          ],
      ),
    );
  }

}

