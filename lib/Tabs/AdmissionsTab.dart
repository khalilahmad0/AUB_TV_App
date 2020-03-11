import 'package:flutter/material.dart';
import 'hey.dart';
import 'dart:async';
import 'package:video_player/video_player.dart';
class AdmissionsTab extends StatefulWidget {
  @override
  _AdmissionsTabState createState() => _AdmissionsTabState();
}
class _AdmissionsTabState extends State<AdmissionsTab> {
  VideoPlayerController playerController;
  VoidCallback listener;
  @override
  void initState() {
    super.initState();
    listener = () {
      setState(() {});
    };
  }
  void createVideo() {
    if (playerController == null) {
      playerController = VideoPlayerController.network(
          "http://commondatastorage.googleapis.com/gtv-videos-bucket/sample/BigBuckBunny.mp4")
        ..addListener(listener)
        ..setVolume(1.0)
        ..initialize()
        ..play();
    } else {
      if (playerController.value.isPlaying) {
        playerController.pause();
      } else {
        playerController.initialize();
        playerController.play();
      }
    }
  }
  @override
  void deactivate() {
    playerController.setVolume(0.0);
    playerController.removeListener(listener);
    super.deactivate();
  }
  @override

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 35, 40, 50),
      body:SingleChildScrollView(

        child:Column(

          children: <Widget>[

            Container(
              height: MediaQuery.of(context).size.height * 0.1,
              width: MediaQuery.of(context).size.width,
              color:Color.fromARGB(255, 35, 40, 50),
              padding: EdgeInsets.fromLTRB(100, 10, 10, 10),
                  child:Text('Office of Admissions',style: TextStyle(
                      color:Colors.white,fontSize: 30.0,
                  ),),

            ),
            Container(
              height: MediaQuery.of(context).size.height * 0.35,
              width: MediaQuery.of(context).size.width,
              color: Color.fromARGB(255, 35, 40, 50),
              padding: EdgeInsets.fromLTRB(10, 10, 10,0),
              child:Text("​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​Established in 1866, AUB has, for over 150 years, served as one of the region’s premier higher education institutions. The University today offers over 140 programs leading to the Bachelor’s, Master’s and MD degrees, in addition to select PhD programs. With a multinational and diversified student body of around 9,400 students, AUB provides an ideal environment for intellectual and cultural growth. Tolerance, respect and inclusiveness are the principles on which the AUB community thrives. At AUB, we provide more than education and professional skills; we harness critical thinking, we empower our students and we offer a way of life. If you’re looking for an enlightening educational and life experience, then AUB is the right place for you. On this website you will find details on our admission policies and procedures, as well as the application process and deadlines. We look forward to welcoming you on campus soon!",style: TextStyle(
                color:Colors.white,fontSize: 15.0,
              ),),
            ),
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[

                RaisedButton(
                  onPressed:() {},

                  color:Color.fromARGB(255, 35, 40, 50),
                  child: Text("141 academic programs",style: TextStyle(
                    color:Colors.white,
                  ),),
                ),
                RaisedButton(
                  onPressed:() {},
                  color:Color.fromARGB(255, 35, 40, 50),


                  child: Text("34M dollars Tuition and Financial Aid",style: TextStyle(
                    color:Colors.white,
                  ),),
                ),

                RaisedButton(
                  onPressed:() {},
                  color:Color.fromARGB(255, 35, 40, 50),


                  child: Text("#2 in the Arab world",style: TextStyle(
                    color:Colors.white,
                  ),),
                ),
                RaisedButton(
                  onPressed:() {
                    Navigator.push(context, MaterialPageRoute(builder:(context)=>hey()));
                  },
                  color:Color.fromARGB(255, 35, 40, 50),


                  child: Text("9,40​8 students from 90 countries",style: TextStyle(
                    color:Colors.white,
                  ),),
                ),



              ],

            ),
            Container(
              child: Image.network("https://www.aub.edu.lb/admissions/wideImagesRotator/WhyAUB1.jpg"),

            ),

            Container(
              child: RaisedButton(
                onPressed:() {
                  createVideo();
                  playerController.play();                },child: Icon(Icons.play_arrow),
              ),
            ),
            Container(height: MediaQuery.of(context).size.height ,
                width: MediaQuery.of(context).size.width,
                child: (
                    (playerController != null
                        ? VideoPlayer(
                      playerController,
                    )
                        : Container()))
            ),
          ],

        )

      )
    );
  }

}
