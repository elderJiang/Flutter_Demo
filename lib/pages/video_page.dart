import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterappmmmm/pages/home_tab_page.dart';
import 'package:flutterappmmmm/pages/shortvideo_page.dart';
import 'package:flutterappmmmm/pages/sports_page.dart';
import 'dart:math' as math;

import 'package:flutterappmmmm/pages/video_tab_page.dart';

var titleList = ['推荐', '电视', '综艺', '读书', '音乐', '同城'];

List<Widget> tabList;

class VideoPage extends StatefulWidget {
  @override
  _VideoPageState createState() => _VideoPageState();
}

TabController _tabController;

class _VideoPageState extends State<VideoPage>
    with SingleTickerProviderStateMixin {
  var tabBar;

  @override
  void initState() {
    super.initState();
    tabBar = HomePageTabBar();
    tabList = getTabList();
    _tabController = TabController(vsync: this, length: tabList.length);
  }

  List<Widget> getTabList() {
    return titleList
        .map((item) => Text(
              '$item',
              style: TextStyle(fontSize: 15),
            ))
        .toList();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: SafeArea(
          child: DefaultTabController(
              length: titleList.length, child: _getNestedScrollView(tabBar))),
    );
  }
}

Widget _getNestedScrollView(Widget tabBar) {
  String hintText = '';
  return NestedScrollView(
    headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
      return <Widget>[
        SliverPersistentHeader(
          floating: true,
          pinned: true,
          delegate: _SliverAppBarDelegate(
            minHeight: 49.0,
            maxHeight: 49.0,
            child: Container(
              color: Colors.white,
              child: tabBar,
            ),
          ),
        ),
      ];
    },
    body: TabBarView(
      children: [
        TJVideoPage(),
        ShortVideoPage(),
        HomeTabPage(),
        SportPage(),
        HomeTabPage(),
        SportPage()
      ],
      controller: _tabController,
    ),
  );
}

class _SliverAppBarDelegate extends SliverPersistentHeaderDelegate {
  _SliverAppBarDelegate({
    @required this.minHeight,
    @required this.maxHeight,
    @required this.child,
  });

  final double minHeight;
  final double maxHeight;
  final Widget child;

  @override
  double get minExtent => minHeight;

  @override
  double get maxExtent => math.max((minHeight ?? kToolbarHeight), minExtent);

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return child;
  }

  @override
  bool shouldRebuild(_SliverAppBarDelegate oldDelegate) {
    return maxHeight != oldDelegate.maxHeight ||
        minHeight != oldDelegate.minHeight ||
        child != oldDelegate.child;
  }
}

class HomePageTabBar extends StatefulWidget {
  @override
  _HomePageTabBarState createState() => _HomePageTabBarState();
}

class _HomePageTabBarState extends State<HomePageTabBar> {
  Color selectColor, unselectedColor;
  TextStyle selectStyle, unselectedStyle;

  @override
  void initState() {
    super.initState();
    selectColor = Colors.black;
    unselectedColor = Color.fromARGB(255, 117, 117, 117);
    selectStyle = TextStyle(fontSize: 18, color: selectColor);
    unselectedStyle = TextStyle(fontSize: 18, color: selectColor);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 10.0, bottom: 10.0),
      child: TabBar(
        tabs: tabList,
        isScrollable: true,
        controller: _tabController,
        indicatorColor: selectColor,
        labelColor: selectColor,
        labelStyle: selectStyle,
        unselectedLabelStyle: unselectedStyle,
        unselectedLabelColor: unselectedColor,
        indicatorSize: TabBarIndicatorSize.label,
      ),
    );
  }
}
