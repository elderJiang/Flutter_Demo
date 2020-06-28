import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Setting extends StatefulWidget {
  @override
  _SettingState createState() => _SettingState();
}

class _SettingState extends State<Setting> {
  List datas = [];
  List<int> items = List.generate(10, (i) => (i));
  bool islaoding = false;
  ScrollController _scrollController = ScrollController();

  List tests = List.generate(20, (i)=>(i));

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
//    for (int i = 0; i < 100; i++) {
//      datas.add(Person('name$i', 'city$i'));
//    }
    _scrollController.addListener(() {
      if (_scrollController.position.pixels ==
          _scrollController.position.maxScrollExtent) {
        _getMoreData();
      }
    });
//    print(tests);
  }

  _getMoreData() async {
    if (!islaoding) {
      setState(() {
        islaoding = true;
      });
      List<int> newEntries =
          await fakeRequestData(items.length, items.length + 10);
      setState(() {
        items.addAll(newEntries);
        islaoding = false;
      });
    }
  }

  Widget _buildProgressIndicator() {
    return new Padding(
      padding: const EdgeInsets.all(8.0),
      child: new Center(
        child: new Opacity(
          opacity: islaoding ? 1.0 : 0.0,
          child: new CircularProgressIndicator(),
        ),
      ),
    );
  }

  Widget getRow(Person p) {
    return ListTile(
      leading: CircleAvatar(
        radius: 20,
        backgroundImage: NetworkImage(
            'https://ss0.bdstatic.com/70cFuHSh_Q1YnxGkpoWK1HF6hhy/it/u=1699287406,228622974&fm=26&gp=0.jpg'),
      ),
      title: Text(p.name),
      subtitle: Text(p.city),
    );
  }

  Widget listView() {
    return ListView.separated(
      itemCount: items.length + 1,
      itemBuilder: (context, index) {
        if (index == items.length) {
          return _buildProgressIndicator();
        } else {
          return ListTile(
            title: Text('Number $index'),
          );
        }
      },
      separatorBuilder: (context, index) {
        return Divider(
          color: Colors.grey,
          indent: 20,
        );
      },
      controller: _scrollController,
    );
  }

  Future<List<int>> fakeRequestData(int fromindex, int toindex) async {
    return Future.delayed(Duration(seconds: 2), () {
      return List.generate(toindex - fromindex, (i) => i + fromindex);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('设置'),
        elevation: 0.0,
      ),
      body: Container(
        child: RefreshIndicator(
          onRefresh: _refresh,
          backgroundColor: Colors.red,
          child: listView(),
        ),
      ),
    );

  }

  Future _refresh() async {
    datas.clear();
    await _loadFirstListData();
    return;
  }

  _loadFirstListData() {
    setState(() {
//      for(int i = 0;i<10;i++){
//        datas.add(Person('HAHA$i', 'HEIHEI$i'));
//      }
    });
  }
}

class Person {
  Person(this.name, this.city);

  final String name;
  final String city;
}
