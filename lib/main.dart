import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'pages/tab_bar.dart';
void main(){
  runApp(myApp());
}
class myApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Demo'),
          elevation: 0.0,
        ),
        body: TabbarPage(),
      ),
    );
  }
}
