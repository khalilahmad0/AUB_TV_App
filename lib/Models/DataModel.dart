import 'package:flutter/material.dart';
import 'package:intl/intl.dart';


class DataModel {

  String title;
  String content;
  String date;
  String image;
  String type;

  DataModel({
    this.title,
    this.content,
    this.type,
    this.image,
    this.date
  });

  bool isNews() {
    return this.type == 'news';
  }

  bool isVideo() {
    return this.type == 'video';
  }

  bool isLive() {
    return this.type == 'live';
  }

}