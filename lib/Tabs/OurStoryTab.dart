import 'package:flutter/material.dart';

class OurStoryTab extends StatefulWidget {
  @override
  _OurStoryTabState createState() => _OurStoryTabState();
}

class _OurStoryTabState extends State<OurStoryTab> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 35, 40, 50),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget> [Container(
        margin: new EdgeInsets.all(10.0),
          decoration: new BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black,
                                blurRadius: MediaQuery.of(context).size.width/20, // has the effect of softening the shadow
                                spreadRadius: 1, // has the effect of extending the shadow
                                offset: Offset(
                                  0, // horizontal, move right 10
                                  0, // vertical, move down 10
                                ),
                              )
                            ],
          ),
              height: MediaQuery.of(context).size.height * 0.8,
//              color: Color.fromARGB(255, 35, 40, 50),
            child: Image(image: AssetImage('assets/team.jpg'))
        ),
        Row(
          children: <Widget>[
            Container(
              color: Color.fromARGB(255, 35, 40, 50),
              height: MediaQuery.of(context).size.height * 0.2,
              width: MediaQuery.of(context).size.width/1.5,
              child: Text("The team responsible of this AUB TV app is made of 4 members majoring in computer science in AUB. The members are Khalil Al Ahmad, George Yeranjian, Mounir El Tannir and Marwa Karaki. We all met in a computer lab for a computer science course where we became good friends. The team directly clicked and it was obvious that if we all put in the effort, it would be easy to achieve great things since the communication was already there. Enjoy the application!",style: TextStyle(color: Colors.white70), textAlign: TextAlign.center),
            ),
            Row(
              children: <Widget>[
                Container(
                  color: Color.fromARGB(255, 35, 40, 50),
                  height: MediaQuery.of(context).size.height/2 ,
                  width: MediaQuery.of(context).size.width,
                  child: Row(
                    children: <Widget>[
                      Container(
                  child: Padding(
                          padding: const EdgeInsets.all(16.0),
                    child:Container(
                      margin: new EdgeInsets.all(8.0),
                      decoration: new BoxDecoration(
                          shape: BoxShape.circle,
                          image: new DecorationImage(image: AssetImage('assets/mounir.jpg'),fit: BoxFit.fill)
                      ),
//                        color: Color.fromARGB(255, 35, 40, 50),
                      width: MediaQuery.of(context).size.width*0.3,
                      alignment: Alignment.center,
                    )
                  ),

                      ),
                    Container(
                      color: Color.fromARGB(255, 35, 40, 50),
                      width: MediaQuery.of(context).size.width/2.5,
                      alignment: Alignment.center,
                      child: Text("this is a test for text box",style: TextStyle(color: Colors.white70), textAlign: TextAlign.center),
                    )
                    ],
                  ),
                  Container(
                    color: Color.fromARGB(255, 35, 40, 50),
                    width: MediaQuery.of(context).size.width / 2,
                    alignment: Alignment.center,
                    child: Text("this is a test for text box",
                        style: TextStyle(color: Colors.white70),
                        textAlign: TextAlign.center),
                  )
                ],
              ),
            ),
            Row(
              children: <Widget>[
                Container(
                  color: Color.fromARGB(255, 35, 40, 50),
                  height: MediaQuery.of(context).size.height/1.8 ,
                  width: MediaQuery.of(context).size.width,
                  child: Row(
                    children: <Widget>[
                      Container(
                        color: Color.fromARGB(255, 35, 40, 50),
                        width: MediaQuery.of(context).size.width/2,
                        alignment: Alignment.center,
                        child: Text("this is a test for text box",style: TextStyle(color: Colors.white70), textAlign: TextAlign.center),
                      ),
                      Container(
                          color: Color.fromARGB(255, 35, 40, 50),
                          height: MediaQuery.of(context).size.height/1.5 ,
                          width: MediaQuery.of(context).size.width/2.5,
                          child: Padding(
                              padding: const EdgeInsets.all(16.0),
                          child:Container(
                            margin: new EdgeInsets.all(8.0),
                            decoration: new BoxDecoration(
                                shape: BoxShape.circle,
                                image: new DecorationImage(image: AssetImage('assets/george.jpg'),fit: BoxFit.fill)
                            ),
//                        color: Color.fromARGB(255, 35, 40, 50),
                            width: MediaQuery.of(context).size.width*0.4,
                            alignment: Alignment.center,
                          )
                      ),
                      ),
                    ],
                  ),
                  Container(
                    color: Color.fromARGB(255, 35, 40, 50),
                    width: MediaQuery.of(context).size.width / 2,
                    alignment: Alignment.center,
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Image.network(
                          "https://ielhajj.github.io/photo.jpg",
                          width: MediaQuery.of(context).size.width / 2,
                          alignment: Alignment.center),
                    ),
                  ),
                ],
              ),
            ),
            Row(children: <Widget>[
              Container(
                color: Color.fromARGB(255, 35, 40, 50),
                height: MediaQuery.of(context).size.height/2 ,
                width: MediaQuery.of(context).size.width,
                child: Row(
                  children: <Widget>[
                    Container(
                      child: Padding(
                          padding: const EdgeInsets.all(16.0),
                          child:Container(
                            margin: new EdgeInsets.all(8.0),
                            decoration: new BoxDecoration(
                                shape: BoxShape.circle,
                                image: new DecorationImage(image: AssetImage('assets/khalil.jpg'),fit: BoxFit.fill)
                            ),
//                        color: Color.fromARGB(255, 35, 40, 50),
                            width: MediaQuery.of(context).size.width*0.4,
                            alignment: Alignment.center,
                          )
                      ),

                    ),
                    Container(
                      color: Color.fromARGB(255, 35, 40, 50),
                      width: MediaQuery.of(context).size.width/2.5,
                      alignment: Alignment.center,
                      child: Text("this is a test for text box",style: TextStyle(color: Colors.white70), textAlign: TextAlign.center),
                    )
                  ],
                ),
              ),
            ],
            ),

    Row(
      children: <Widget>[
        Container(
          color: Color.fromARGB(255, 35, 40, 50),
          height: MediaQuery.of(context).size.height/2 ,
          width: MediaQuery.of(context).size.width,
          child: Row(
            children: <Widget>[
              Container(
                color: Color.fromARGB(255, 35, 40, 50),
                width: MediaQuery.of(context).size.width/2,
                alignment: Alignment.center,
                child: Text("this is a test for text box",style: TextStyle(color: Colors.white70), textAlign: TextAlign.center),
              ),
              Container(
                color: Color.fromARGB(255, 35, 40, 50),
                height: MediaQuery.of(context).size.height/1.5,
                width: MediaQuery.of(context).size.width/2.5,
                child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child:Container(
                      margin: new EdgeInsets.all(8.0),
                      decoration: new BoxDecoration(
                          shape: BoxShape.circle,
                          image: new DecorationImage(image: AssetImage('assets/marwa.jpg'),fit: BoxFit.fill)
                      ),
                      width: MediaQuery.of(context).size.width*0.4,
                      height: MediaQuery.of(context).size.height*0.5,
                      alignment: Alignment.center,
                    )
                ),
              ),
            ],
          ),
        ),
      ],

            ),
          ],
        ),
      ])),
    );
  }
}

