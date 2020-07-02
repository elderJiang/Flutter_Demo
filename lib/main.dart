import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'pages/tab_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
//    ScreenUtil.instance = ScreenUtil(width: 750, height: 1334)..init(context);
    
    return TabbarPage();
  }
}
