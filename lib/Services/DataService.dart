import 'dart:convert';
import 'package:aub/Models/DataModel.dart';
import 'package:http/http.dart' as http;
import 'package:intl/intl.dart';
import 'package:flutter/material.dart';

class DataService {

  static getNews() {
    var title1 = "All you need to know about the Novel Coronavirus (2019-nCOV)";
    var content1 = "What is a 2019 Novel Coronavirus (2019-nCOV)? ​It is a new strain "
        "of coronavirus that has been recently identified in humans. It was first identified in China.";
    var image1 = "https://www.aub.edu.lb/PublishingImages/spotlight/corona.jpg";
    var type1 = "news";
    var date1 = "2/24/2020";

    var title2 = "All you need to know about the Novel Coronavirus (2019-nCOV)";
    var content2 = "What is a 2019 Novel Coronavirus (2019-nCOV)? ​It is a new strain "
        "of coronavirus that has been recently identified in humans. It was first identified in China.";
    var image2 = "https://www.aub.edu.lb/PublishingImages/spotlight/corona.jpg";
    var type2 = "news";
    var date2 = "2/24/2020";

    var title3 = "All you need to know about the Novel Coronavirus (2019-nCOV)";
    var content3 = "What is a 2019 Novel Coronavirus (2019-nCOV)? ​It is a new strain "
        "of coronavirus that has been recently identified in humans. It was first identified in China.";
    var image3 = "https://www.aub.edu.lb/PublishingImages/spotlight/corona.jpg";
    var type3 = "news";
    var date3 = "2/24/2020";

    var title4 = "All you need to know about the Novel Coronavirus (2019-nCOV)";
    var content4 = "What is a 2019 Novel Coronavirus (2019-nCOV)? ​It is a new strain "
        "of coronavirus that has been recently identified in humans. It was first identified in China.";
    var image4 = "https://www.aub.edu.lb/PublishingImages/spotlight/corona.jpg";
    var type4 = "news";
    var date4 = "2/24/2020";

    List<DataModel> newsList = [
      DataModel(title: title1, content: content1, image: image1, type: type1, date: date1),
      DataModel(title: title2, content: content2, image: image2, type: type2, date: date2),
      DataModel(title: title3, content: content3, image: image3, type: type3, date: date3),
      DataModel(title: title4, content: content4, image: image4, type: type4, date: date4),
      DataModel(title: title4, content: content4, image: image4, type: type4, date: date4),
      DataModel(title: title4, content: content4, image: image4, type: type4, date: date4),
    ];

    return newsList;
  }

  static getVideos() {

  }

  static getLive() {

  }
}
