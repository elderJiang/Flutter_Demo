import 'package:flutter/material.dart';
import 'package:flutterappmmmm/pages/news_detai.dart';
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
    HomePage(),
    ShopPage(),
    Setting(),
    MePage(),
  ];
  List<String> _pageNames = [
    '首页',
    '购物',
    '设置',
    '我的',
  ];

  void _onTap(int index) {
    setState(() {
      _selectIndex = index;
    });
  }
  Widget _getPagesWidget(int index){
    return Offstage(
      offstage: _selectIndex != index,
      child: TickerMode(
        enabled: _selectIndex == index,
        child: _pages[index],
      ),
    );
  }

  @override
  void didUpdateWidget(TabbarPage oldWidget) {
    super.didUpdateWidget(oldWidget);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
//        appBar: AppBar(
//          title: Text(_pageNames[_selectIndex]),
//          elevation: 0.0,
//        ),
        body: Stack(
          children: <Widget>[
            _getPagesWidget(0),
            _getPagesWidget(1),
            _getPagesWidget(2),
            _getPagesWidget(3)
          ],
        ),
        bottomNavigationBar: Theme(
          data: ThemeData(
              highlightColor: Color.fromARGB(0, 0, 0, 0),
              splashColor: Color.fromARGB(0, 0, 0, 0)
              ),
          child: BottomNavigationBar(
            items: const <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.home,
                ),
                title: Text('首页'),
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.business,
                ),
                title: Text('商城'),
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.settings,
                ),
                title: Text('设置'),
              ),

              BottomNavigationBarItem(
                icon: Icon(
                  Icons.school,
                ),
                title: Text('我的'),
              ),
            ],
            currentIndex: _selectIndex,
            selectedItemColor: Colors.amber[800],
            unselectedItemColor: Colors.grey,
            onTap: _onTap,
          ),
        ),
      ),
//      routes: {
//        '/detail':(context,urlStr)=>NewsDetail(url: urlStr,),
//      },
    );
  }
  
}
