import 'package:aub/Models/DataModel.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:aub/Services/DataService.dart';
import 'package:aub/Pages/DetailPage.dart';

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
              child: widget.item.type == 'news'
                  ? Image.network(widget.item.media)
                  : Image.network(widget.item.poster),
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
                widget.item.title,
                maxLines: 2,
                style: TextStyle(color: Colors.white),
              ),
              alignment: Alignment.center,
            ),
            Align(
              child: Text(widget.item.date,
                  style: TextStyle(
                      color: Color.fromARGB(70, 255, 255, 255), fontSize: 10)),
              alignment: Alignment.center,
            ),
          ],
        ),
      ),
    );
  }

  FutureProvider<DataModel> buildPosterImage(BuildContext context) {
    return FutureProvider<DataModel>(
      create: (_) => Provider.of<DataService>(context).getImage(widget.item),
      child: Consumer<DataModel>(
        builder: (context, fanart, _) {
          if (fanart != null && fanart.media != null) {
            if (fanart.isNews()) {
              return Image.network(widget.item.media);
            } else if (fanart.isVideo()) {
              return Image.network(widget.item.poster);
            } else
              return Image.network(
                  "https://seeba.se/wp-content/themes/consultix/images/no-image-found-360x260.png",
                  fit: BoxFit.fill);
          } else {
            return Image.network(
                "https://seeba.se/wp-content/themes/consultix/images/no-image-found-360x260.png",
                fit: BoxFit.fill);
            // return Image.memory(kTransparentImage);
          }
        },
      ),
    );
  }
}

Widget coverListView(BuildContext context, String endpoint) {
  return FutureProvider<List<DataModel>>(
    create: (_) {
      switch (endpoint) {
        case ("news"):
          return Provider.of<DataService>(context).getNews(6);
        case ("video"):
          return Provider.of<DataService>(context).getVideos(6);
        case ("live"):
          return Provider.of<DataService>(context).getNews(6);
        default:
          return Provider.of<DataService>(context).getNews(6);
      }
    },
    child: Consumer<List<DataModel>>(
      builder: (context, items, _) {
        if (items != null) {
          return OrientationBuilder(builder: (context, orientation) {
            int itemCount = orientation == Orientation.landscape ? 3 : 6;
            return GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: itemCount, childAspectRatio: 0.809862),
              itemCount: itemCount,
              shrinkWrap: true,
              itemBuilder: (BuildContext context, int index) {
                DataModel item = items[index];
                return Container(
                  child: Cover(
                    item: item,
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => DetailPage(item)));
                    },
                  ),
                  height: 10,
                );
              },
            );
          });
        }
        return Text('loading');
      },
    ),
  );
}
