import 'package:aub/Pages/DetailPage.dart';
import 'package:aub/Pages/Faculties/FAS.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:aub/Widgets/Cover2.dart';

class FHS extends StatefulWidget {
  @override
  _FHSState createState() => _FHSState();

}



class _FHSState extends State<FHS> {
  Widget build(BuildContext context){
    List<Cover2> myList = List<Cover2>();
    myList.add(Cover2(text: "Environmental Health", image:"" ,  onTap: () {Navigator.push(context, MaterialPageRoute(builder: (context) => FHS()));}));
    myList.add(Cover2(text: "Epidemiology", image:"", onTap: null));
    myList.add(Cover2(text: "Health Communication", image:"", onTap: null));
    myList.add(Cover2(text: "Medical Audiology Sciences", image:"", onTap: null));
    myList.add(Cover2(text: "Medical Imaging Sciences", image:"", onTap: null));
    myList.add(Cover2(text: "Medical Laboratory Sciences", image:"", onTap: null));
    myList.add(Cover2(text: "Population Health", image:"", onTap: null));
    myList.add(Cover2(text: "Public Health", image:"" ,  onTap: () {Navigator.push(context, MaterialPageRoute(builder: (context) => FHS()));}));
    myList.add(Cover2(text: "Public Health Nutrition", image:"", onTap: null));



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
            childAspectRatio: 5,
            crossAxisCount: 2,
            children: myList,
          ),
        ],
      ),
    );
  }

}

