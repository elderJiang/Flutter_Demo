import 'dart:convert';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterappmmmm/pages/inc_page.dart';
import 'package:http/http.dart' as http;
import 'package:fluttertoast/fluttertoast.dart';
import 'home_tab_page.dart';
import 'post_data.dart';
import 'detail_page.dart';
import 'package:flutterappmmmm/Widgets/custom_appbar.dart';
import 'package:flutter_custom_bottom_tab_bar/tabbar.dart';
import 'package:flutter_custom_bottom_tab_bar/eachtab.dart';

//class HomePage extends StatefulWidget {
//  @override
//  _HomePageState createState() => _HomePageState();
//}
//
//class _HomePageState extends State<HomePage>
//    with AutomaticKeepAliveClientMixin {
//  @override
//  Widget build(BuildContext context) {
//    return HomeList();
//  }
//
//  @override
//  // TODO: implement wantKeepAlive
//  bool get wantKeepAlive => true;
//}

class HomeList extends StatefulWidget {
  @override
  _HomeListState createState() => _HomeListState();
}

class _HomeListState extends State<HomeList>
    with AutomaticKeepAliveClientMixin,SingleTickerProviderStateMixin {
  TabController _tabController;
  int _selectIndex = 0;
  @override
  bool get wantKeepAlive => true;

  @override
  void initState() {
    super.initState();
    getitems();
_tabController = TabController(length: _pagesTitle.length, vsync: this);
setState(() {
  _tabController.addListener((){
    _selectIndex = _tabController.index;
  });
});
  }

  List _pagesTitle = [
    '新闻',
    '娱乐',
    '体育',
    '财经',
    '军事',
//    '科技',
//    '手机',
//    '数码',
//    '时尚',
//    '游戏',
//    '教育',
//    '健康',
//    '旅游',
//    '视频',
  ];
  List<Tab> items = [];
  List<Tab> getitems(){
    for(int i =0; i<_pagesTitle.length;i++){
      items.add(Tab(text: _pagesTitle[i],));
    }
    return items;
  }
  @override
  Widget build(BuildContext context) {
    super.build(context);
    return DefaultTabController(
      length: _pagesTitle.length,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.red,
          leading: Container(
            child: Image.asset('images/logo_tux.png'),
          ),
          title: Container(
            height: 40,
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(20)),
              color: Colors.white.withOpacity(0.3),
            ),
            child: Container(
              padding: EdgeInsets.only(left: 10),
              child: Row(
                children: <Widget>[
                  Icon(Icons.search,color: Colors.white,),
                  Text('请输入关键字',style: TextStyle(fontSize: 17,color: Colors.white),),
                ],
              ),
            ),
          ),
          actions: <Widget>[
            IconButton(icon: Icon(Icons.whatshot), onPressed: (){}),
            IconButton(icon: Icon(Icons.message),onPressed: (){},),
          ],
          bottom: PreferredSize(
            preferredSize: Size.fromHeight(40),
            child: Material(
              elevation: 0.0,
              color: Colors.white,
              child: TabBar(
                indicatorColor: Colors.red,
//                controller: _tabController,
                labelColor: Colors.red,
                unselectedLabelColor: Colors.black,
                indicatorSize:TabBarIndicatorSize.label,
                tabs: _pagesTitle.map((item)=>Tab(text: item,)).toList(),
              ),
            ),
          ),
        ),
        body: TabBarView(
          children: <Widget>[
            HomeTabPage(),
            IncPage(),
            Center(
              child: Text('222'),
            ),
            Center(
              child: Text('222'),
            ),

            Center(
              child: Text('222'),
            ),

          ],
        ),
      ),
    );
  }
}
