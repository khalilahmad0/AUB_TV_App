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
  ScrollController _scrollController;

  @override
  void initState() {
    _scrollController = ScrollController();
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
      child: Scaffold(
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
        padding: const EdgeInsets.fromLTRB(50.0, 50, 0, 50),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Expanded(
              child: ListView(
                controller: _scrollController,
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
                                    builder: (context) =>
                                        VideoScreen(widget.item.media)));
                          },
                          child: Text('PLAY'),
                          color: Color.fromARGB(255, 255, 60, 70),
                          textColor: Colors.white,
                        ),
                      SizedBox(width: 20),
                    ],
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 40.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  RawMaterialButton(
                    onPressed: () {
                      var offset = _scrollController.offset;
                      _scrollController.animateTo(offset - 250, duration: Duration(seconds: 1), curve: Curves.linear);
                    },
                    elevation: 2.0,
                    fillColor: Colors.red,
                    child: Icon(
                      Icons.arrow_upward,
                      size: 20.0,
                      color: Colors.white,
                    ),
                    padding: EdgeInsets.all(15.0),
                    shape: CircleBorder(),
                  ),
                  SizedBox(height: 10,),
                  RawMaterialButton(
                    onPressed: () {
                      var offset = _scrollController.offset;
                      _scrollController.animateTo(offset + 250, duration: Duration(seconds: 1), curve: Curves.linear);
                    },
                    elevation: 2.0,
                    fillColor: Colors.white,
                    child: Icon(
                      Icons.arrow_downward,
                      size: 20.0,
                      color: Colors.red,
                    ),
                    padding: EdgeInsets.all(15.0),
                    shape: CircleBorder(),
                  )
                ],
              ),
            ),
          ],
        ));
  }
}
