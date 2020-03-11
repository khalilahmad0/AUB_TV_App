import 'dart:convert';
import 'package:aub/Models/DataModel.dart';
import 'package:http/http.dart' as http;

class DataService {
  String baseUrl =
      'https://firebasestorage.googleapis.com/v0/b/corona-d3ec9.appspot.com/o/dummy.json?alt=media&token=6c07bb99-46d5-4963-b87a-0c983c4eb8b0';
  String baseUrl2 =
      "https://firebasestorage.googleapis.com/v0/b/corona-d3ec9.appspot.com/o/dummy_videos.json?alt=media&token=2a595c3a-5b2c-4c6f-b52c-c7fba95ab7e3";

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

  Future<List<DataModel>> getVideos(int limit) async {
    var res = await http.get('$baseUrl2');
    if (res.statusCode == 200) {
      List<dynamic> body = jsonDecode(res.body);

      List<DataModel> videos = body
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

//  static getNews() {
//
//    var title1 = "All you need to know about Coronavirus (2019-nCOV)";
//    var content1 = "What is a 2019 Novel Coronavirus (2019-nCOV)? ​It is a new strain "
//        "of coronavirus that has been recently identified in humans. It was first identified in China.";
//    var image1 = "https://www.aub.edu.lb/PublishingImages/spotlight/corona.jpg";
//    var type1 = "news";
//    var date1 = "February 24 2020";
//
//    var title2 = "AUB and Dar Al-Handasah Consultants (Shair & Partners) sign MOU";
//    var content2 = "Office of Communcations, communications@aub.edu.lb The initiative marks a new partnership that will involve establishing academic cooperation in areas related to sustainability for the Middle East region with a focus on green buildings, green engineering, and sustainable practices. Dar, a leading, privately-owned professional services firm dedicated to supporting sustainable practices and designs, and the American University of Beirut (AUB) set forth the general framework for cooperation to deliver on their shared vision and objectives."
//    "The objective of the new initiative is to explore and identify opportunities in sustainability and management for trainees; promote the offering of e-training courses including the courses developed for the online professional diploma in green technologies; organize joint events; support and sponsor the biennial AUB ASHRAE conference dedicated to establishing best practices in building design, systems, and practices; create venues for students to engage and compete in projects related to sustainability; develop collaborative projects through theses or final year projects; and seek partnerships and grants to deploy best practices in sustainable buildings and systems."
//    "AUB Provost Mohamed Harajli stated that this collaboration can be instrumental in supporting AUB's initiatives in developing innovative approaches to address the energy challenges faced in the Middle East region, supporting the energy education, research, and development to prepare students for employability in the energy sector. It also empowers centers and institutes to play a noteworthy outreach role.";
//
//    var image2 = "https://www.aub.edu.lb/articles/PublishingImages/thumbs/mou-Dar%20Al-Handasah.jpg";
//    var type2 = "news";
//    var date2 = "February 21 2020";
//
//    var title3 = "Remembering a medical pioneer: Dr. Bernard J. Brandstater";
//    var content3 = "AUB mourned the passing of one of its leaders and inspiring figures in the world of science and medicine, at the age of 90. Dr. Bernard J. Brandstater, pioneered a number of medical advances during his 13-year tenure at AUB.";
//    var image3 = "https://www.aub.edu.lb/articles/PublishingImages/Feb-20/bernard-THUMB.jpg";
//    var type3 = "news";
//    var date3 = "February 06 2020";
//
//    var title4 = "Dr. Hussein Tawbi nominated to US President’s Council of Advisors on Science and Technology";
//    var content4 = "AUB alumnus Hussein Tawbi, MD, PhD, has been nominated by US President Donald Trump to the President's Council of Advisors on Science and Technology (PCAST).";
//    var image4 = "https://www.aub.edu.lb/articles/PublishingImages/Feb-20/dawi-thumb.jpg";
//    var type4 = "news";
//    var date4 = "February 05 2020";
//
//    var title5 = "Rania Matar photo exhibition “An Image and Her Woman” at AUB";
//    var content5 = "An Image and Her Woman. The Photographs of Rania Matar, AUB Byblos Bank Art Gallery, Ada Dodge Hall, AUB";
//    var image5 = "https://www.aub.edu.lb/PublishingImages/spotlight/matar-rania.jpg";
//    var type5 = "news";
//    var date5 = "February 04 2020";
//
//    var title6 = "Preserving the Bedouin culture: a project, exhibition, and cultural center";
//    var content6 = "Cultural Corridors of Peace is an 18-month project that aims to support the Bedouin communities in Lebanon’s Beqaa Valley to document, archive, and safeguard their living memory and intangible cultural heritage.";
//    var image6 = "https://www.aub.edu.lb/articles/PublishingImages/jan-20/CulturalCorridorsthumb.jpg";
//    var type6 = "news";
//    var date6 = "February 03 2020";
//
//    List<DataModel> newsList = [
//      DataModel(title: title1, content: content1, media: image1, type: type1, date: date1),
//      DataModel(title: title2, content: content2, media: image2, type: type2, date: date2),
//      DataModel(title: title3, content: content3, media: image3, type: type3, date: date3),
//      DataModel(title: title4, content: content4, media: image4, type: type4, date: date4),
//      DataModel(title: title5, content: content5, media: image5, type: type5, date: date5),
//      DataModel(title: title6, content: content6, media: image6, type: type6, date: date6),
//    ];
//
//    return newsList;
//  }
//
//  static getVideos() {
//
//  }
//
//  static getLive() {
//
//  }
}
