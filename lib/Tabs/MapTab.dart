import 'package:aub/Pages/DetailPage.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:aub/Widgets/Cover.dart';

class MapTab extends StatefulWidget {
  @override
  _MapTabState createState() => _MapTabState();
}

class _MapTabState extends State<MapTab> {

  @override
  Widget build(BuildContext context) {
    return Container(
//      child: FutureProvider<List<TraktModel>>(
//        create: (_) {return Provider.of<TraktService>(context).getShows(24);},
//        child: Consumer<List<TraktModel>>(
//          builder: (context,data,_) {
//            if(data != null) {
//              return createListView(context, data);
//            }
//            return Center(child: CircularProgressIndicator());
//          },
//        ),
//      ),
    );
  }

//  Widget createListView(BuildContext context, List<TraktModel> values) {
//
//    return GridView.builder(
//      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 6, childAspectRatio: 0.55),
//      itemCount: values.length,
//
//      itemBuilder: (BuildContext context, int index) {
//        TraktModel item = values[index];
//        return Cover(item: item, onTap: () { Navigator.push(context, MaterialPageRoute(builder: (context) => DetailPage(item)));});
//      },
//    );
//
//  }

}

