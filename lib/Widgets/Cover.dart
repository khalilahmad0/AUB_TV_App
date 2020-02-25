import 'package:aub/Models/DataModel.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'package:transparent_image/transparent_image.dart';
import 'package:aub/Services/DataService.dart';
import 'package:aub/Pages/DetailPage.dart';
import 'package:aub/Services/FanartService.dart';
import 'package:aub/Services/TraktService.dart';

class Cover extends StatefulWidget {
  const Cover({
    Key key,
    @required this.item,
    @required this.onTap,
    this.onFocus,
  }) : super(key: key);

  final DataModel item;
  final Function onTap;
  final Function onFocus;

  @override
  _CoverState createState() => _CoverState();
}

class _CoverState extends State<Cover> with SingleTickerProviderStateMixin {
  FocusNode _node;
  AnimationController _controller;
  Animation<double> _animation;
  int _focusAlpha = 100;

  Widget image;

  @override
  void initState() {
    _node = FocusNode();
    _node.addListener(_onFocusChange);
    _controller = AnimationController(
        duration: const Duration(milliseconds: 100),
        vsync: this,
        lowerBound: 0.9,
        upperBound: 1);
    _animation = CurvedAnimation(parent: _controller, curve: Curves.easeIn);
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    _node.dispose();
    super.dispose();
  }

  void _onFocusChange() {
    if (_node.hasFocus) {
      _controller.forward();
      if (widget.onFocus != null) {
        widget.onFocus();
      }
    } else {
      _controller.reverse();
    }
  }

  void _onTap() {
    _node.requestFocus();
    if (widget.onTap != null) {
      widget.onTap();
    }
  }

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: _onTap,
      focusNode: _node,
      focusColor: Colors.transparent,
      focusElevation: 0,
      child: buildCover(context),
    );
  }

  Widget buildCover(BuildContext context) {
    return ScaleTransition(
      scale: _animation,
      alignment: Alignment.center,
      child: GestureDetector(
        onTap: _onTap,
        child: Column(
          children: <Widget>[
            Container(
              child: Image.network(
                  "https://d2gg9evh47fn9z.cloudfront.net/800px_COLOURBOX6882671.jpg"),
              decoration: BoxDecoration(boxShadow: [
                BoxShadow(
                  color: Colors.black.withAlpha(_focusAlpha),
                  blurRadius: 15,
                  offset: Offset(10, 15),
                )
              ]),
            ),
            Align(
              child: Text(
                "Test",
                maxLines: 1,
                style: TextStyle(color: Colors.white),
              ),
              alignment: Alignment.center,
            ),
            Align(
              child: Text("dd/mm/yyyy".toString(),
                  style: TextStyle(
                      color: Color.fromARGB(70, 255, 255, 255), fontSize: 10)),
              alignment: Alignment.center,
            ),
          ],
        ),
      ),
    );
  }

  buildPosterImage2(BuildContext context){
    List news = DataService.getNews();
    return Image.network(news[0].image1);
  }

//  FutureProvider<FanartItem> buildPosterImage(BuildContext context) {
//    return FutureProvider<FanartItem>(
//      create: (_) => Provider.of<FanartService>(context).getImages(widget.item),
//      child: Consumer<FanartItem>(
//        builder: (context, fanart, _) {
//          if (fanart != null && fanart.poster != null) {
//            widget.item.fanart = fanart;
//            return FadeInImage.memoryNetwork(
//              placeholder: kTransparentImage,
//              image: widget.item.fanart.poster,
//              fit: BoxFit.fill,
//            );
//          } else {
//            return Image.memory(kTransparentImage, fit: BoxFit.fill);
//            // return Image.memory(kTransparentImage);
//          }
//        },
//      ),
//    );
//  }
}

Widget CoverListView2(BuildContext context, String dataType) {
  var list = DataService.getNews();

  return OrientationBuilder(builder: (context, orientation) {
    int itemCount = orientation == Orientation.landscape ? 3 : 6;
    return GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: itemCount, childAspectRatio: 0.809862),
      itemCount: itemCount,
      shrinkWrap: true,
      itemBuilder: (BuildContext context, int index) {
        DataModel item = list[index];
        return Container(
          child: Cover(
            item: item,
            onTap: () {
//                    Navigator.push(context, MaterialPageRoute(builder: (context) => DetailPage(item)));
            },
          ),
          height: 10,
        );
      },
    );
  });
}

//
//Widget CoverListView(BuildContext context, String endpoint) {
//  return FutureProvider<List<TraktModel>>(
//    create: (_) {
//      switch (endpoint) {
//        case 'news':
//          return Provider.of<TraktService>(context).getData(6);
//        case 'live':
//          return Provider.of<TraktService>(context).getData(6);
//        case 'videos':
//          return Provider.of<TraktService>(context).getData(6);
//      }
//    },
//    child: Consumer<List<TraktModel>>(
//      builder: (context, items, _) {
//        if (items != null) {
//          return OrientationBuilder(builder: (context, orientation) {
//            int itemCount = orientation == Orientation.landscape ? 3 : 6;
//            return GridView.builder(
//              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
//                  crossAxisCount: itemCount, childAspectRatio: 0.809862),
//              itemCount: itemCount,
//              shrinkWrap: true,
//              itemBuilder: (BuildContext context, int index) {
//                TraktModel item = items[index];
//                return Container(
//                  child: Cover(
//                    item: item,
//                    onTap: () {
////                    Navigator.push(context, MaterialPageRoute(builder: (context) => DetailPage(item)));
//                    },
//                  ),
//                  height: 10,
//                );
//              },
//            );
//          });
//        }
//        return Text('loading');
//      },
//    ),
//  );
//}
