import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutterappmmmm/pages/news_detai.dart';
import 'package:flutterappmmmm/pages/video_page.dart';
import 'home_page.dart';
import 'shop_page.dart';
import 'me_page.dart';
import 'setting_page.dart';

class TabbarPage extends StatefulWidget {
  @override
  _TabbarPageState createState() => _TabbarPageState();
}

class _TabbarPageState extends State<TabbarPage> {
  int _selectIndex = 0;
  List<Widget> _pages = [
    HomeList(),
    VideoPage(),
    Setting(),
    MePage(),
  ];
  List<String> _pageNames = [
    '首页',
    '视频',
    '设置',
    '我的',
  ];

  void _onTap(int index) {
    setState(() {
      _selectIndex = index;
    });
  }

  @override
  void didUpdateWidget(TabbarPage oldWidget) {
    super.didUpdateWidget(oldWidget);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: IndexedStack(
          children: _pages,
          index: _selectIndex,
        ),
        bottomNavigationBar:  BottomNavigationBar(
          showUnselectedLabels: true,
            items: const <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.home,
                ),
                title: Text('首页',),
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.play_arrow,
                  size: 30,
                ),
                title: Text('视频'),
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.mode_comment,
                ),
                title: Text('圈子'),
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.person,
                ),
                title: Text('我的'),
              ),
            ],
            currentIndex: _selectIndex,
            selectedItemColor: Colors.red,
            unselectedItemColor: Colors.black,
            type: BottomNavigationBarType.fixed,
            onTap: _onTap,
        ),
      ),
    );
  }
  
}
