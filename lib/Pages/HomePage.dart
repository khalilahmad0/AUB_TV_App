import 'package:aub/Pages/SettingsPage.dart';
import 'package:aub/Tabs/HomeTab.dart';
import 'package:aub/Tabs/MapTab.dart';
import 'package:aub/Tabs/CatalogueTab.dart';
import 'package:aub/Tabs/AdmissionsTab.dart';
import 'package:aub/Tabs/MissionTab.dart';
import 'package:aub/Tabs/FAQTab.dart';
import 'package:flutter/material.dart';
//RawKeyboardListener

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 6,
      child: Scaffold(
        backgroundColor: Color.fromARGB(255, 35, 40, 50),
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          title: Row(
            children: <Widget>[
              Image.network(
                "https://www.aub.edu.lb/Style%20Library/AUB/images/logo.png",
                height: MediaQuery.of(context).size.height * 0.25,
                width: MediaQuery.of(context).size.height * 0.13,
              ),
              SizedBox(width: 20),
              TabBar(
                isScrollable: true,
                indicatorColor: Color.fromARGB(255, 255, 60, 70),
                labelColor: Colors.red,
                unselectedLabelColor: Colors.white,
                tabs: <Widget>[
                  Tab(text: 'Home'),
                  Tab(text: 'Catalogue'),
                  Tab(text: 'Map'),
                  Tab(text: 'Admissions'),
                  Tab(text: 'Mission'),
                  Tab(text: 'FAQ'),
                ],
              )
            ],
          ),
          actions: <Widget>[
            IconButton(
                icon: Icon(Icons.settings),
                onPressed: () {
//                Navigator.push(context, MaterialPageRoute(builder: (context) => SettingsPage()));
                }),
          ],
        ),
        body: Center(
          child: TabBarView(
            children: <Widget>[
              HomeTab(),
              CatalogueTab(),
              MapTab(),
              AdmissionsTab(),
              MissionTab(),
              FAQTab(),
            ],
          ),
        ),
      ),
    );
  }
}
