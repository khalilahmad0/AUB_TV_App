import 'package:aub/Pages/DetailPage.dart';
import 'package:aub/Pages/FAS.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:aub/Widgets/Cover2.dart';

class FM extends StatefulWidget {
  @override
  _FMState createState() => _FMState();

}



class _FMState extends State<FM> {
  Widget build(BuildContext context){
    List<Cover2> myList = List<Cover2>();
    myList.add(Cover2(text: "Biochemistry", image:"" ,  onTap: () {Navigator.push(context, MaterialPageRoute(builder: (context) => FM()));}));
    myList.add(Cover2(text: "Biomedical Sciences", image:"", onTap: null));
    myList.add(Cover2(text: "Human Morphology", image:"", onTap: null));
    myList.add(Cover2(text: "Medicine", image:"", onTap: null));
    myList.add(Cover2(text: "Microbiology and Immunology", image:"", onTap: null));
    myList.add(Cover2(text: "Neuroscience", image:"", onTap: null));
    myList.add(Cover2(text: "Nursing", image:"", onTap: null));
    myList.add(Cover2(text: "Orthodontics", image:"" ,  onTap: () {Navigator.push(context, MaterialPageRoute(builder: (context) => FM()));}));
    myList.add(Cover2(text: "Pharmacology and Therapeutics", image:"", onTap: null));
    myList.add(Cover2(text: "Physiology", image:"" ,  onTap: () {Navigator.push(context, MaterialPageRoute(builder: (context) => FM()));}));
    myList.add(Cover2(text: "SHARP", image:"", onTap: null));



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
            childAspectRatio: 3,
            crossAxisCount: 3,
            children: myList,
          ),
        ],
      ),
    );
  }

}

