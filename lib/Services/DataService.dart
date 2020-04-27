import 'dart:convert';
import 'dart:io';
import 'package:aub/Models/DataModel.dart';
import 'package:aub/Utilities/keys.dart';
import 'package:http/http.dart' as http;
import 'package:http/io_client.dart';

class DataService {
  String baseUrl =
      'https://aubtvapp.000webhostapp.com/api/news/read.php';
  String baseUrl2 =
      "https://www.googleapis.com/youtube/v3/search?key=$API_KEY"
      "&channelId=UCDchSdXKyty9eOcdLr6sLCQ&part=snippet,id&order=date&maxResults=6";
  String cmpsApi = "https://aubtvapp.000webhostapp.com/api/news/read_cmps.php";

  Future<List<DataModel>> getNews(int limit) async {
    var res = await http.get('$baseUrl');
    if (res.statusCode == 200) {
      List<dynamic> body = jsonDecode(res.body);
      List<DataModel> news = body
          .map(
            (dynamic item) => DataModel.fromJson(item, 'news'),
          )
          .toList();
      return news;
    } else {
      print(res.statusCode);
      print(res.body);
      return List<DataModel>();
    }
  }

  Future<List<DataModel>> getCMPSNews(int limit) async {
    var res = await http.get('$cmpsApi');
    if (res.statusCode == 200) {
      List<dynamic> body = jsonDecode(res.body);
      List<DataModel> news = body
          .map(
            (dynamic item) => DataModel.fromJson(item, 'news'),
      )
          .toList();
      return news;
    } else {
      print(res.statusCode);
      print(res.body);
      return List<DataModel>();
    }
  }
  Future<List<DataModel>> getVideos(int limit) async {
    var res = await http.get('$baseUrl2');
    if (res.statusCode == 200) {
      Map<String, dynamic> body = jsonDecode(res.body);
      List<dynamic> bodyNew = body['items'];
      List<DataModel> videos = bodyNew
          .map(
            (dynamic item) => DataModel.fromJson(item, 'video'),
          )
          .toList();
      return videos;
    } else {
      print(res.statusCode);
      print(res.body);
      return List<DataModel>();
    }
  }

  getImage(DataModel item) {
    if (item != null) {
      if (item.isNews()) {
        return item.media;
      } else if (item.isVideo()) {
        return item.poster;
      }
    }
  }
}
