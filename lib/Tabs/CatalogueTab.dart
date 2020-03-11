import 'package:aub/Pages/DetailPage.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:aub/Widgets/Cover.dart';

class CatalogueTab extends StatefulWidget {
  @override
  _CatalogueTabState createState() => _CatalogueTabState();
}

class _CatalogueTabState extends State<CatalogueTab> {


  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
//      child: FutureProvider<List<TraktModel>>(
//        create: (_) {return Provider.of<TraktService>(context).getMovies(24);},
//        child: Consumer<List<TraktModel>>(
//          builder: (context,data,_) {
//            if(data != null) {
//              return _buildGridView(context, data);
//            }
//            return Center(child: CircularProgressIndicator());
//          },
//        ),
//      ),
    );
  }

//  Widget _buildGridView(BuildContext context, List<TraktModel> values) {
//
//    return OrientationBuilder(
//      builder: (context, orientation) {
//        int itemCount = orientation == Orientation.landscape ? 6 : 3;
//        return GridView.builder(
//          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: itemCount, childAspectRatio: 0.55),
//          itemCount: values.length,
//          itemBuilder: (BuildContext context, int index) {
//            TraktModel item = values[index];
//            return Cover(
//              item: item,
//              onTap: () { Navigator.push(context, MaterialPageRoute(builder: (context) => DetailPage(item)));},
//            );
//          },
//        );
//      },
//    );
//
//
//
//  }

}

