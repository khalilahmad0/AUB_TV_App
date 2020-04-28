import 'package:aub/Widgets/Cover3.dart';
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
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(top: 15, right: 10.0),
                      child: Container(
                        height: 300,
                        width: 410,
                        margin: new EdgeInsets.all(8.0),
                        child: Cover3(
                            image:
                                "https://blogbaladi.com/wp-content/uploads/2016/01/AUB-New-mindingthe-624x416.jpg"),
                      ),
                    ),
                    Expanded(
                        child: Text(
                      'The American University of Beirut (AUB) is an institution of higher learning founded to provide '
                          'excellence in education, to participate in the advancement of knowledge through research, and to serve the '
                          'peoples of the Middle East and beyond. Chartered in New York State in 1863, the university bases its '
                          'educational philosophy, standards, and practices on the American liberal arts model of higher education. ',
                      style: TextStyle(
                          color: Colors.white,
                          fontStyle: FontStyle.italic,
                          fontSize: 17),
                    ))
                  ],
                ),
                Row(
                  children: <Widget>[
                    Expanded(
                        child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        'The university believes deeply in and encourages freedom of thought and expression and seeks to foster '
                            'tolerance and respect for diversity and dialogue. Graduates will be individuals committed to creative '
                            'and critical thinking, life-long learning, personal integrity, civic responsibility, and leadership. ',
                        style: TextStyle(
                            color: Colors.white,
                            fontStyle: FontStyle.italic,
                            fontSize: 17),
                      ),
                    )),
                    Container(
                      height: 310.0,
                      width: 410,
                      margin: new EdgeInsets.all(8.0),
                      child: Cover3(
                          image:
                              "https://media-cdn.tripadvisor.com/media/photo-s/13/17/de/e1/aub-main-gate.jpg"),
                    )
                  ],
                )
              ],
            ),
          ),
        ));
  }
}
