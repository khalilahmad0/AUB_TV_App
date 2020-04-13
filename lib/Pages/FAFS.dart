import 'package:aub/Pages/DetailPage.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:aub/Widgets/Cover2.dart';

class FAFS extends StatefulWidget {
  @override
  _FAFSState createState() => _FAFSState();

}



class _FAFSState extends State<FAFS> {
  Widget build(BuildContext context){
    List<Cover2> myList = List<Cover2>();
    myList.add(Cover2(text: "Agribusiness", image:"" ,  onTap: () {Navigator.push(context, MaterialPageRoute(builder: (context) => FAFS()));}));
    myList.add(Cover2(text: "Agriculture", image:"", onTap: null));
    myList.add(Cover2(text: "Agricultural Economics", image:"", onTap: null));
    myList.add(Cover2(text: "Animal Science", image:"", onTap: null));
    myList.add(Cover2(text: "Eco-system Management", image:"", onTap: null));
    myList.add(Cover2(text: "Food Safety", image:"", onTap: null));
    myList.add(Cover2(text: "Food Science and  \n Management", image:"", onTap: null));
    myList.add(Cover2(text: "Food Security", image:"" ,  onTap: () {Navigator.push(context, MaterialPageRoute(builder: (context) => FAFS()));}));
    myList.add(Cover2(text: "Food Technology", image:"", onTap: null));
    myList.add(Cover2(text: "Irrigation", image:"", onTap: null));
    myList.add(Cover2(text: "Landscape Architecture", image:"", onTap: null));
    myList.add(Cover2(text: "Nutrition", image:"", onTap: null));
    myList.add(Cover2(text: "Nutrition and Dietetics", image:"", onTap: null));
    myList.add(Cover2(text: "Nutrition and Dietetics \n - Coordinated", image:"", onTap: null));
    myList.add(Cover2(text: "Plant Protection", image:"", onTap: null));
    myList.add(Cover2(text: "Plant Science", image:"" ,  onTap: () {Navigator.push(context, MaterialPageRoute(builder: (context) => FAFS()));}));
    myList.add(Cover2(text: "Poultry Science", image:"", onTap: null));
    myList.add(Cover2(text: "Public Health Nutrition", image:"" ,  onTap: () {Navigator.push(context, MaterialPageRoute(builder: (context) => FAFS()));}));
    myList.add(Cover2(text: "Rural Community \n Development", image:"", onTap: null));



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
          Container(
            child: Text("FAFS")
          ),
          new GridView.count(
            childAspectRatio: 3,
            crossAxisCount: 4,
            children: myList,
          ),
        ],
      ),
    );
  }

}

