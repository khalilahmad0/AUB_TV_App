import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class DataModel {
  String title;
  String content; //content of news or description of videos
  String date;
  String media;
  String type;

  DataModel({this.title, this.content, this.type, this.media, this.date});

  bool isNews() {
    return this.type == 'news';
  }

  bool isVideo() {
    return this.type == 'video';
  }

  bool isLive() {
    return this.type == 'live';
  }

  factory DataModel.fromJson(Map<String, dynamic> json, String type,
      {DataModel show}) {
    DataModel item = DataModel();

    if (type == 'news' || type == 'video') {
      item.title = json[type]['title'] as String;
      item.type = type;
      item.content = json[type]['content'] as String;
      item.media = json[type]['media'] as String;
      item.date = json[type]['date'] as String;
    }

    if (type == 'live') {
      //TODO: figure out what the live API returns
      item.title = json[type]['title'] as String;
      item.type = type;
      item.content = json[type]['content'] as String;
      item.media = json[type]['media'] as String;
      item.date = json[type]['date'] as String;
    }
    return item;
  }
}
