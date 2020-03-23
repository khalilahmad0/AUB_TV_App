import 'package:aub/Pages/DetailPage.dart';
import 'package:aub/Pages/FAS.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:aub/Widgets/Cover2.dart';

class OSB extends StatefulWidget {
  @override
  _OSBState createState() => _OSBState();

}



class _OSBState extends State<OSB> {
  Widget build(BuildContext context){
    List<Cover2> myList = List<Cover2>();
    myList.add(Cover2(text: "Business Administration​", image:"" ,  onTap: () {Navigator.push(context, MaterialPageRoute(builder: (context) => OSB()));}));
    myList.add(Cover2(text: "Business Analytics​", image:"", onTap: null));
    myList.add(Cover2(text: "Executive Master of Business Administration", image:"", onTap: null));
    myList.add(Cover2(text: "Finance", image:"", onTap: null));
    myList.add(Cover2(text: "Human Resource Management", image:"", onTap: null));



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

