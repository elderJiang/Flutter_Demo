import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';

class NewsDetail extends StatelessWidget {
  final String url;
  NewsDetail({this.url});

  @override
  Widget build(BuildContext context) {
//    return Scaffold(
//      appBar: AppBar(
//        title: Text('新闻详情'),
//      ),
//      body: Container(
//        child: Text(url),
//      ),
//    );
  return MaterialApp(
    routes: {
      "/": (_) => new WebviewScaffold(
        url: url,
        appBar: new AppBar(
          title: new Text("Widget webview"),
        ),
      ),
    },
  );
  }
}


