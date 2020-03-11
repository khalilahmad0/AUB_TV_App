import 'dart:ui';
import 'package:aub/Pages/VideoPage.dart';
import 'package:aub/Models/DataModel.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:transparent_image/transparent_image.dart';

class DetailPage extends StatefulWidget {
  final DataModel item;

  DetailPage(this.item);

  @override
  _DetailPageState createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> with TickerProviderStateMixin {
  TabController tabController;

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Shortcuts(
      // needed for AndroidTV to be able to select
      shortcuts: {
        LogicalKeySet(LogicalKeyboardKey.select):
            const Intent(ActivateAction.key)
      },
      child: MaterialApp(
        theme: ThemeData(
          primarySwatch: Colors.blue,
          fontFamily: GoogleFonts.openSans().fontFamily,
        ),
        home: Scaffold(
            body: Container(
          color: Colors.black,
          child: Stack(
            children: <Widget>[
              buildBackdropImage(context),
              Container(
                  width: double.infinity,
                  height: double.infinity,
                  decoration: BoxDecoration(
                      gradient: LinearGradient(
                          begin: Alignment.centerLeft,
                          end: Alignment.centerRight,
                          colors: [
                        Colors.black.withAlpha(230),
                        Colors.transparent
                      ])),
                  child: buildItemDetails()),
            ],
          ),
        )),
      ),
    );
  }

  Widget buildBackdropImage(BuildContext context) {
    return Stack(
      children: <Widget>[
        FadeInImage.memoryNetwork(
          placeholder: kTransparentImage,
          image: (widget.item.type == 'news')
              ? (widget.item.media != 'null')
                  ? (widget.item.media)
                  : kTransparentImage
              : (widget.item.poster != 'null')
                  ? (widget.item.poster)
                  : kTransparentImage,
          fit: BoxFit.cover,
          width: double.infinity,
          height: double.infinity,
        ),
      ],
    );
  }

  Widget buildItemDetails() {
    return Padding(
      padding: const EdgeInsets.all(50.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Flexible(
              flex: 5,
              child: SingleChildScrollView(
                child: Column(
                  children: <Widget>[
                    Align(
                        alignment: Alignment.topLeft,
                        child: Text(
                          widget.item.title,
                          style: GoogleFonts.oswald(
                              textStyle:
                                  TextStyle(color: Colors.white, fontSize: 50)),
                        )),
                    SizedBox(height: 40),
                    Align(
                        alignment: Alignment.topLeft,
                        child: SizedBox(
                          width: 400,
                          child: AutoSizeText(
                            widget.item.content,
                            style: TextStyle(
                                color: Colors.white, fontSize: 20, height: 1.5),
                          ),
                        )),
                    SizedBox(height: 50),
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      children: <Widget>[
                        RaisedButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          child: Icon(Icons.arrow_back),
                          color: Color.fromARGB(255, 255, 60, 70),
                          textColor: Colors.white,
                        ),
                        SizedBox(width: 20),
                        if (widget.item.isVideo())
                          RaisedButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => VideoApp()));
                            },
                            child: Text('PLAY'),
                            color: Color.fromARGB(255, 255, 60, 70),
                            textColor: Colors.white,
                          ),
                        SizedBox(width: 20),
//                    FlatButton(onPressed: (){},child: Text('Trailer'), color: Colors.white, ),
                      ],
                    ),
                  ],
                ),
              )),
        ],
      ),
    );
  }
}
