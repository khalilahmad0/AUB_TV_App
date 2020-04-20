import 'package:html/parser.dart';

class DataModel {
  String title;
  String content; //content of news or description of videos
  String date;
  String media;
  String type;
  String poster;

  DataModel({this.title, this.content, this.type, this.media, this.date, this.poster});

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

    if (type == 'news') {
      var parsedContent = parse(json['content'] as String);
      String parsedString = parse(parsedContent.body.text).documentElement.text;

      item.title = json['title'] as String;
      item.type = type;
      item.content = parsedString;
      item.media = json['media'] as String;
      item.date = json['date'] as String;
    }

    if (type == 'video') {
      item.title = json['snippet']['title'] as String;
      item.type = type;
      item.content = json['snippet']['description'] as String;
      item.media = json['id']['videoId'] as String;
      item.date = json['snippet']['publishedAt'] as String;
      item.poster = json['snippet']['thumbnails']['high']['url'] as String;
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
