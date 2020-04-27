import 'dart:convert';
import 'dart:io';
import 'package:aub/Widgets/Cover2.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:html/parser.dart';
import 'package:path_provider/path_provider.dart';
import 'package:flutter_pdfview/flutter_pdfview.dart';
import 'package:http/http.dart' as http;
import 'Faculties/FAS.dart';
import 'dart:async';

Future sleep1() {
  return new Future.delayed(const Duration(seconds: 7), () => "1");
}

class PDFViewer extends StatefulWidget {
  String URL = "";

  PDFViewer(this.URL);

  @override
  _PDFViewerState createState() => _PDFViewerState();
}

class _PDFViewerState extends State<PDFViewer>
    with SingleTickerProviderStateMixin {
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

  @override
  void dispose() {
    super.dispose();
  }

  Future<File> getFileFromUrl(String url) async {
    try {
      // get the data from the JSON Object
      var data = await http.get(url);
      var parsed = json.decode(data.body);

      // remove html tags from the text
      var parsedContent = parse(parsed['content'] as String);
      String parsedString = parse(parsedContent.body.text).documentElement.text;

      // get the PDF
      var newData = await http.get(parsedString);
      var bytes = newData.bodyBytes;
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
    return Shortcuts(
      shortcuts: {
        LogicalKeySet(LogicalKeyboardKey.select):
            const Intent(ActivateAction.key)
      },
      child: MaterialApp(
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
                    onPressed: () {
                      Timer(Duration(seconds: 2), () {
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

class _PdfViewPageState extends State<PdfViewPage>
    with SingleTickerProviderStateMixin {
  int _totalPages = 0;
  int _currentPage = 0;
  bool pdfReady = false;
  PDFViewController _pdfViewController;

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
      ),
    );
  }
}
