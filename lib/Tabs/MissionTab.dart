import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/material.dart';



class MissionTab extends StatefulWidget {
  @override
  _MissionTabState createState() => _MissionTabState();
}


class _MissionTabState extends State<MissionTab> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromARGB(255, 35, 40, 50),
        body: Column(
            children:<Widget>[
              Row(
                children: <Widget>[
                  Container(
                    child:Image.network("https://pbs.twimg.com/media/DX7DqY3WkAA-yt7.jpg"),
                  ),
                  Container(child: Text('The American University of Beirut (AUB) is an institution of higher learning founded to provide excellence in education, to participate  in the advancement of knowledge through research,and to serve the peoples of the Middle East and beyond. Chartered in New York State in 1863, the university bases its educational philosophy, standards, and practices on the American liberal arts model of higher education. ', style: TextStyle(color: Colors.white,fontStyle: FontStyle.italic),)),
                ],
              )
            ]
        )
    );
  }
}
