import 'package:flutter/material.dart';
import 'package:nice_button/nice_button.dart';


class EmptyButton extends StatefulWidget {
  const EmptyButton({
    Key key,
    this.onFocus,
  }) : super(key: key);

  final Function onFocus;

  @override
  _EmptyButtonState createState() => _EmptyButtonState();
}

class _EmptyButtonState extends State<EmptyButton> with SingleTickerProviderStateMixin {
  FocusNode _node;
  AnimationController _controller;

  Widget image;

  @override
  void initState() {
    _node = FocusNode();
    _node.addListener(_onFocusChange);
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
  }

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: _onTap,
      focusNode: _node,
      focusColor: Colors.transparent,
      focusElevation: 0,
      child: buildEmpty(context),
    );
  }

  Widget buildEmpty(BuildContext context) {
    return
      Container(
//        decoration: BoxDecoration(color: Color.fromRGBO(83, 93, 112, .9)),
//        child: new ExpansionTile(
//          key: new PageStorageKey<int>(3),
//          backgroundColor: Color.fromARGB(255, 83, 93, 112),
//          title: new Text(
//            "test",
//            style: TextStyle(color: Colors.white, fontSize: 25),
//          ),
//          children: t.children.map(_buildTiles).toList(),
//        ),
      );
  }
}
