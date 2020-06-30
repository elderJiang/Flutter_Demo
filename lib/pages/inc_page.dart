import 'dart:convert';
import 'dart:core' as prefix0;
import 'dart:core';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyrefresh/easy_refresh.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutterappmmmm/generated/json/base/json_convert_content.dart';
import 'package:http/http.dart' as http;
import 'package:flutterappmmmm/Models/inc_model_entity.dart';
import 'package:flutterappmmmm/generated/json/inc_model_entity_helper.dart';
import 'package:flutter_swiper/flutter_swiper.dart'; // 引入头文件

class IncPage extends StatefulWidget {
  @override
  _IncPageState createState() => _IncPageState();
}

class _IncPageState extends State<IncPage> with AutomaticKeepAliveClientMixin {
  List<IncModelT1348648517839> modes = [];
  bool isloading = false;
  int startIndex = 0;
  ScrollController _scrollController = ScrollController();
  bool showtipView = false;

  Future<List<IncModelT1348648517839>> getData(bool showtip) async {
    modes.clear();
    final response = await http
        .get('http://c.3g.163.com/nc/article/list/T1348648517839/0-10.html');
    if (response.statusCode == 200) {
      print(response.body);
      Map<String, dynamic> json = jsonDecode(response.body);
      IncModelEntity model = IncModelEntity().fromJson(json);
      modes = model.t1348648517839;
      setState(() {
        showtipView = showtip;
        Future.delayed(Duration(seconds: 1),(){
            setState(() {
              showtipView = false;
            });
        });
        return modes;
      });
//      return model.t1348648517839;
    } else {
      print('哈哈哈哈哈哈');
    }
  }

  @override
  void initState() {
    super.initState();
    getData(false);
    this._scrollController.addListener(() {
      if (this._scrollController.position.pixels ==
          this._scrollController.position.maxScrollExtent) {
        getMoreData(startIndex += 10);
      }
    });
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
      Map<String, dynamic> json = jsonDecode(response.body);
      IncModelEntity model = IncModelEntity().fromJson(json);
//      modes = model.t1348648517839;
      setState(() {
        modes.addAll(model.t1348648517839);
        isloading = false;
      });
//      return modes;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: EasyRefresh(
        child: ListView.separated(
          separatorBuilder: (BuildContext context, int index) {
            return Divider(
              color: Colors.grey[300],
              height: 0.5,
            );
          },
          itemCount: modes.length + 2,
          itemBuilder: (context, index) {
            if (index == modes.length && isloading == false) {
              if (modes.isNotEmpty) {
                return refreshFooter();
              } else {
                return Center(
                  child: CupertinoActivityIndicator(
                    radius: 10,
                  ),
                );
              }
            } else {
              if (modes.isNotEmpty) {
                if(this.showtipView){
                  if(index == 0){
                    return Container(
                      height: 50,
                      color: Colors.red,
                      child: Center(
                        child: Text('加载完成....',style: TextStyle(color: Colors.white,fontSize: 14),),
                      ),
                    );
                  }else{
                    return BuildRowWithModel(modes[index]);

                  }
                }else {
                  return BuildRowWithModel(modes[index]);
                }
              } else {
                return Center(
                  child: CupertinoActivityIndicator(
                    radius: 20,
                  ),
                );
              }
            }
          },
          controller: _scrollController,
        ),
        onRefresh: () async {
          getData(true);
        },
      ),
    );
  }

  Widget refreshFooter() {
    return Container(
      height: 50,
      child: Center(
        child: Row(
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

  Widget incHeader(IncModelT1348648517839 model) {
    List<Widget> imageList = [];
    final List<IncModelT1348648517839Imgextra> imagemodel = model.imgextra;
    for (int i = 0; i < imagemodel.length; i++) {
      final IncModelT1348648517839Imgextra image = imagemodel[i];
      imageList.add(Image.network(
        image.imgsrc,
        fit: BoxFit.cover,
      ));
    }

    print('是撒哈哈是：${imagemodel.length}');
    return Container(
      height: 200,
      width: MediaQuery.of(context).size.width,
      color: Colors.orange,
      child: Swiper(
        itemCount: imagemodel.length,
        itemBuilder: (BuildContext context, int index) {
          return imageList[index];
        },
        pagination: SwiperPagination(
          alignment: Alignment.bottomRight,
          margin: EdgeInsets.fromLTRB(0, 0, 20, 10),
        ),
        controller: SwiperController(),
        scrollDirection: Axis.horizontal,
        autoplay: false,
        onTap: (index) => print('点击了第$index'),
      ),
    );
  }

  @override
  // TODO: implement wantKeepAlive
  prefix0.bool get wantKeepAlive => true;
}

Widget BuildRowWithModel(IncModelT1348648517839 model) {
  return Container(
    margin: EdgeInsets.all(16),
    child: Column(
      children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Expanded(
              flex: 3,
              child: Container(
                height: 100,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      model.title,
                      style: TextStyle(fontSize: 17, color: Colors.black),
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                    Padding(padding: EdgeInsets.only(top: 10)),
                    Container(
                      child: Row(
                        children: <Widget>[
                          RichText(
                            text: TextSpan(
                              children: <TextSpan>[
                                TextSpan(
                                    text: '${model.source} ',
                                    style: TextStyle(
                                        fontSize: 16, color: Colors.grey)),
                                TextSpan(
                                  text: '${model.replyCount}跟帖',
                                  style: TextStyle(
                                      fontSize: 16,
                                      color: Colors.grey,
                                      fontFamily: 'Courier'),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: Container(
                width: 80,
                height: 60,
                child: Image.network(
                  model.imgsrc,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ],
        ),
        Column(
          children: <Widget>[
//           model.ads.length > 0 ? adsWidgets(model.ads) : null,
          ],
        ),
      ],
    ),
  );
}

Widget adsWidgets(List<IncModelT1348648517839Ad> ads) {
//  List<IncModelT1348648517839Ad> *ad =ads;
  if (ads == null) {
    return null;
  }
  IncModelT1348648517839Ad adModel = ads[0];

  return Container(
    padding: EdgeInsets.all(16),
    child: Column(
      children: <Widget>[
        Expanded(
          child: Text(adModel.title),
          flex: 1,
        ),
        Padding(padding: EdgeInsets.only(bottom: 10)),
        Expanded(
          flex: 2,
          child: Container(
            child: Image.network(
              adModel.imgsrc,
              fit: BoxFit.cover,
            ),
          ),
        ),
        Expanded(
          flex: 1,
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(5)),
              border: Border.all(
                color: Colors.grey,
                width: 0.5,
              ),
            ),
            child: Center(
              child: Text(
                '广告',
                style: TextStyle(color: Colors.black12, fontSize: 9),
              ),
            ),
          ),
        ),
      ],
    ),
  );
}
