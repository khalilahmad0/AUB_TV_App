import 'package:aub/Pages/DetailPage.dart';
import 'package:aub/Pages/Faculties/FAS.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:aub/Widgets/Cover2.dart';

class MSFEA extends StatefulWidget {
  @override
  _MSFEAState createState() => _MSFEAState();

}



class _MSFEAState extends State<MSFEA> {
  Widget build(BuildContext context){
    List<Cover2> myList = List<Cover2>();
    myList.add(Cover2(text: "Applied Energy", image:"" ,  onTap: () {Navigator.push(context, MaterialPageRoute(builder: (context) => MSFEA()));}));
    myList.add(Cover2(text: "Architecture", image:"", onTap: null));
    myList.add(Cover2(text: "Biomedical Engineering", image:"", onTap: null));
    myList.add(Cover2(text: "Chemical Engineering", image:"", onTap: null));
    myList.add(Cover2(text: "Civil Engineering", image:"", onTap: null));
    myList.add(Cover2(text: "Computer and Communications \n Engineering", image:"", onTap: null));
    myList.add(Cover2(text: "Computer Science Engineering", image:"", onTap: null));
    myList.add(Cover2(text: "Construction Engineering", image:"" ,  onTap: () {Navigator.push(context, MaterialPageRoute(builder: (context) => MSFEA()));}));
    myList.add(Cover2(text: "Electrical and Computer Engineering", image:"", onTap: null));
    myList.add(Cover2(text: "Energy Studies", image:"", onTap: null));
    myList.add(Cover2(text: "Engineering Management", image:"", onTap: null));
    myList.add(Cover2(text: "Environmental and Water \n Resources  Engineering", image:"", onTap: null));
    myList.add(Cover2(text: "Environmental Technology", image:"", onTap: null));
    myList.add(Cover2(text: "Graphic Design", image:"", onTap: null));
    myList.add(Cover2(text: "Industrial Engineering", image:"", onTap: null));
    myList.add(Cover2(text: "Mechanical Engineering", image:"" ,  onTap: () {Navigator.push(context, MaterialPageRoute(builder: (context) => MSFEA()));}));
    myList.add(Cover2(text: "Urban Design", image:"", onTap: null));
    myList.add(Cover2(text: "Urban Planning and Policy", image:"", onTap: null));


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
            childAspectRatio: 4,
            crossAxisCount: 3,
            children: myList,
          ),
        ],
      ),
    );
  }

}

