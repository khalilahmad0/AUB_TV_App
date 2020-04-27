
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:path_provider/path_provider.dart';
import 'package:flutter_pdfview/flutter_pdfview.dart';
import 'package:http/http.dart' as http;
import 'FAS.dart';
import 'dart:async';

Future sleep1() {
  return new Future.delayed(const Duration(seconds: 7), () => "1");
}


class PDFViewer extends StatefulWidget {
  String URL="";
  PDFViewer(this.URL);
  @override
  _PDFViewerState createState() => _PDFViewerState();
}

<<<<<<< lib/Pages/PDFViewer.dart
class _PDFViewerState extends State<PDFViewer>
    with SingleTickerProviderStateMixin {
=======
class _PDFViewerState extends State<PDFViewer> {
>>>>>>> lib/Pages/PDFViewer.dart
  String assetPDFPath = "";
  String urlPDFPath = "";
//  String NewNewURL=NewUrl;



  @override
  void initState() {
    super.initState();

    getFileFromUrl(widget.URL).then((f) {
      setState(() {
        urlPDFPath = f.path;
        print(urlPDFPath);
      });
    });
  }


  Future<File> getFileFromUrl(String url) async {
    try {
      var data = await http.get(url);
      var bytes = data.bodyBytes;
      var dir = await getApplicationDocumentsDirectory();
      File file = File("${dir.path}/mypdfonline.pdf");
      File urlFile = await file.writeAsBytes(bytes);
      return urlFile;
    } catch (e) {
      throw Exception("Error opening url file");
    }
  }




  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color.fromARGB(255, 35, 40, 50),
        body: Center(
          child: Builder(
            builder: (context) => Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                RaisedButton(
                  color: Colors.amber,
                  child: Text("Open PDF"),
                  onPressed: () {Timer(Duration(seconds: 7), () {
                    if (urlPDFPath != null) {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  PdfViewPage(path: urlPDFPath)));
                    }
                  });

                  },
                ),
                SizedBox(
                  height: 20,
                ),

              ],
            ),
          ),
        ),
      ),
    );
  }
}

class PdfViewPage extends StatefulWidget {
  final String path;

  const PdfViewPage({Key key, this.path}) : super(key: key);
  @override
  _PdfViewPageState createState() => _PdfViewPageState();
}

<<<<<<< lib/Pages/PDFViewer.dart
class _PdfViewPageState extends State<PdfViewPage>
    with SingleTickerProviderStateMixin {
=======
class _PdfViewPageState extends State<PdfViewPage> {
>>>>>>> lib/Pages/PDFViewer.dart
  int _totalPages = 0;
  int _currentPage = 0;
  bool pdfReady = false;
  PDFViewController _pdfViewController;

  @override
<<<<<<< lib/Pages/PDFViewer.dart
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Shortcuts(
      shortcuts: {
        LogicalKeySet(LogicalKeyboardKey.select):
            const Intent(ActivateAction.key)
      },
      child: Scaffold(
        body: Column(
          children: <Widget>[
            Container(
              height: MediaQuery.of(context).size.height * 0.9,
              child: PDFView(
                fitPolicy: FitPolicy.HEIGHT,
                filePath: widget.path,
                autoSpacing: true,
                enableSwipe: true,
                pageSnap: true,
                swipeHorizontal: true,
                nightMode: false,
                onError: (e) {
                  print(e);
                },
                onRender: (_pages) {
                  setState(() {
                    _totalPages = _pages;
                    pdfReady = true;
                  });
                },
                onViewCreated: (PDFViewController vc) {
                  _pdfViewController = vc;
                },
                onPageChanged: (int page, int total) {
                  setState(() {});
                },
                onPageError: (page, e) {},
              ),
            ),
            !pdfReady
                ? Center(
                    child: CircularProgressIndicator(),
                  )
                : Offstage(),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                _currentPage > 0
                    ? RaisedButton(
                        focusColor: Colors.grey,
                        onPressed: () {
                          _currentPage -= 1;
                          _pdfViewController.setPage(_currentPage);
                        },
                        elevation: 2.0,
                        color: Colors.blueGrey,
                        child: Icon(
                          Icons.navigate_before,
                          size: MediaQuery.of(context).size.height * 0.05,
                          color: Colors.red,
                        ),
                        padding: EdgeInsets.all(
                          MediaQuery.of(context).size.height * 0.01,
                        ),
                        shape: CircleBorder(),
                      )
                    : Offstage(),
                _currentPage + 1 < _totalPages
                    ? RawMaterialButton(
                        focusColor: Colors.grey,
                        onPressed: () {
                          _currentPage += 1;
                          _pdfViewController.setPage(_currentPage);
                        },
                        elevation: 2.0,
                        fillColor: Colors.blueGrey,
                        child: Icon(
                          Icons.navigate_next,
                          size: MediaQuery.of(context).size.height * 0.05,
                          color: Colors.red,
                        ),
                        padding: EdgeInsets.all(
                          MediaQuery.of(context).size.height * 0.01,
                        ),
                        shape: CircleBorder(),
                      )
                    : Offstage(),
              ],
            ),
          ],
        ),
=======
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          PDFView(
            filePath: widget.path,
            autoSpacing: true,
            enableSwipe: true,
            pageSnap: true,
            swipeHorizontal: true,
            nightMode: false,
            onError: (e) {
              print(e);
            },
            onRender: (_pages) {
              setState(() {
                _totalPages = _pages;
                pdfReady = true;
              });
            },
            onViewCreated: (PDFViewController vc) {
              _pdfViewController = vc;
            },
            onPageChanged: (int page, int total) {
              setState(() {});
            },
            onPageError: (page, e) {},
          ),
          !pdfReady
              ? Center(
            child: CircularProgressIndicator(),
          )
              : Offstage()
        ],
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          _currentPage > 0
              ? FloatingActionButton.extended(
            backgroundColor: Colors.red,
            label: Text("Go to ${_currentPage - 1}"),
            onPressed: () {
              _currentPage -= 1;
              _pdfViewController.setPage(_currentPage);
            },
          )
              : Offstage(),
          _currentPage+1 < _totalPages
              ? FloatingActionButton.extended(
            backgroundColor: Colors.green,
            label: Text("Go to ${_currentPage + 1}"),
            onPressed: () {
              _currentPage += 1;
              _pdfViewController.setPage(_currentPage);
            },
          )
              : Offstage(),
        ],
>>>>>>> lib/Pages/PDFViewer.dart
      ),
    );
  }
}
