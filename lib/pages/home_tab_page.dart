import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:async/async.dart';

class HomeTabPage extends StatefulWidget {
  @override
  _HomeTabPageState createState() => _HomeTabPageState();
}

class _HomeTabPageState extends State<HomeTabPage>
    with AutomaticKeepAliveClientMixin {
  List<NewsModel> news = [];
  bool isloading = false;
  int startIndex = 0;

//  int newsCount = 10;
  ScrollController _scrollController = ScrollController();

  Future<List<NewsModel>> getData() async {
    var response = await http.get(
        'http://c.m.163.com/nc/article/headline/T1348647853363/$startIndex-10.html');
//    print(response.statusCode);
//    print(response.body);
    final responsebody = jsonDecode(response.body);
//    if (response.statusCode == 200) {
    news = responsebody['T1348647853363']
        .map<NewsModel>((item) => NewsModel.fromJson(item))
        .toList();
    setState(() {
      return news;
    });
//    }
  }

  Future getMoreData(int index) async {
    if (!isloading) {
      setState(() {
        isloading = true;
      });
      var url =
          'http://c.m.163.com/nc/article/headline/T1348647853363/$index-10.html';
      print('URL==$url');
      var response = await http.get(url);
      final responseBody = jsonDecode(response.body);
      List<NewsModel> morenews = responseBody['T1348647853363']
          .map<NewsModel>((item) => NewsModel.fromJson(item))
          .toList();
//    return ;
      setState(() {
        news.addAll(morenews);
        print(news.length);
        isloading = false;
      });
    }
  }

  Widget getRow(NewsModel model,Function tap) {
    if (model == null) {
      return Container();
    }
    Function callback = (){};

    List times = model.mtime.split(' ');
    return FlatButton(
      child: Container(
        padding: EdgeInsets.all(16),
//      margin: EdgeInsets.only(right: 100),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Expanded(
              flex: 2,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    model.digest,
                    style: TextStyle(
                      fontSize: 16,
                    ),
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 10),
                  ),
                  Row(
                    children: <Widget>[
                      Text(
                        model.source,
                        style: TextStyle(fontSize: 12, color: Colors.black12),
                      ),
                      Padding(padding: EdgeInsets.only(left: 10)),
                      follow(model.replyCount),
                    ],
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 1,
              child: Container(
                width: 80,
                height: 60,
//              child: Image.network(model.imgsrc),
                child: FadeInImage.assetNetwork(
                    placeholder: '', image: model.imgsrc),
              ),
            ),
          ],
        ),
      ),
      onPressed: tap,
    );
//    return ;
  }

  Widget follow(int replyCount) {
    print('哈哈哈哈哈哈哈$replyCount');

    if (replyCount > 3000) {
      return Container(
        height: 20,
        padding: EdgeInsets.all(5),
        decoration: BoxDecoration(
          border: Border.all(
            color: Colors.red,
            width: 0.5,
          ),
          borderRadius: BorderRadius.all(Radius.circular(10)),
        ),
        child: Container(
//          color: Colors.orange,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Icon(
                Icons.hot_tub,
                color: Colors.red,
                size: 9,
              ),
              Padding(padding: EdgeInsets.only(left: 5)),
              Text(
                '$replyCount跟帖',
                style: TextStyle(fontSize: 8, color: Colors.red),
              ),
            ],
          ),
        ),
      );
    } else if (replyCount == 0) {
      return Container();
    } else {
      return Text(
        '$replyCount跟帖',
        style: TextStyle(fontSize: 10, color: Colors.grey),
      );
    }
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
//    getData();
    this._scrollController.addListener(() {
      if (this._scrollController.position.pixels ==
          this._scrollController.position.maxScrollExtent) {
        getMoreData(startIndex += 10);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemCount: news.length + 1,
      itemBuilder: (context, index) {
        if (index == news.length && news.isNotEmpty) {
          return refreshFooter();
        } else {
          if (news.isEmpty) {
            return Container(
              color: Colors.red,
              width: 100,
              height: MediaQuery.of(context).size.height,
              child: Center(
                child: Text('暂无数据!'),
              ),
            );
          } else {
            return getRow(news[index],(){
              print('点击了第$index个Item');

            });
          }
        }
      },
      controller: _scrollController,
      separatorBuilder: (BuildContext context,int index){
        return Divider(color: Colors.grey,height: 0.5,indent: 20,);
      },
    );
  }

  Widget refreshFooter() {
    return Container(
      height: 50,
      child: Center(
        child: Row(
//          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            CupertinoActivityIndicator(
              radius: 10,
            ),
            Padding(padding: EdgeInsets.only(left: 10)),
            Text(
              '加载中...',
              style: TextStyle(fontSize: 12, color: Colors.black),
            ),
          ],
        ),
      ),
    );
  }

  @override
  // TODO: implement wantKeepAlive
  bool get wantKeepAlive => true;
}

class NewsModel {
  NewsModel(this.title, this.digest, this.mtime, this.imgsrc, this.source,
      this.url, this.replyCount);

  final String title;
  final String digest;
  final String mtime;

//  final int hasImg;
  final String imgsrc;
  final String source;
  final String url;
  final int replyCount;

  NewsModel.fromJson(Map json)
      : title = json['title'],
        digest = json['digest'],
        mtime = json['mtime'],
        imgsrc = json['imgsrc'],
        source = json['source'],
        url = json['url'],
        replyCount = json['replyCount'];

  Map toJson() => {
        'title': title,
        'digest': digest,
        'mtime': mtime,
        'imgsrc': imgsrc,
        'source': source,
        'url': url,
        'replyCount': replyCount,
      };
}
