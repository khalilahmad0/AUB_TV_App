import 'package:flutter/material.dart';

class cool extends StatefulWidget {
  @override
  _cool createState() => _cool();
}

class _cool extends State<cool> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromARGB(255, 35, 40, 50),
        body:SingleChildScrollView(

            child:Row(
                      children: <Widget>[
                        Stack( children: <Widget>[

                          Center(
                            child: Image.network("https://www.aub.edu.lb/admissions/PublishingImages/whyaub/excellenceineducation.jpg"),

                          ),
                          Align(alignment: Alignment.bottomLeft,
                            child: Text('#244 in the world, #2 in the Arab world',
                              style: TextStyle(
                                color:Colors.white,fontSize: 30.0,fontWeight: FontWeight.bold,),
                            ),)

                        ],


                        ),
                        Stack( children: <Widget>[

                          Center(
                            child: Image.network("https://www.aub.edu.lb/admissions/PublishingImages/whyaub/liberalarts.jpg"),

                          ),
                          Align(alignment: Alignment.bottomLeft,
                            child: Text('Over 140 degree programs 11:1 student to faculty ratio',
                              style: TextStyle(
                                color:Colors.white,fontSize: 30.0,fontWeight: FontWeight.bold,),
                            ),)

                        ],


                        ),
                        Stack( children: <Widget>[

                          Center(
                            child: Image.network("https://www.aub.edu.lb/admissions/PublishingImages/whyaub/job.jpg"),

                          ),
                          Align(
                            alignment: Alignment.bottomLeft,
                            child: Text('Do you want a job after graduation? #1 in the MENA region for employability #51 in the entire world',style: TextStyle(
                              color:Colors.white,fontSize: 30.0,fontWeight: FontWeight.bold,),
                            ),)
                        ],
                        ),
                  ]
                  ),
            ),
        );
  }}