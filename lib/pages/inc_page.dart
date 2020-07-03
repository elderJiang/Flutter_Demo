import 'dart:convert';
import 'dart:core';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
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

enum LoadIngStatus {
  STATUS_LOADING, //正在加载
  STATUS_COMPLETED, //加载完毕
  STATUS_IDEL //空闲
}

class _IncPageState extends State<IncPage> with AutomaticKeepAliveClientMixin {
  List<IncModelT1348648517839> modes = [];
  bool isloading = false;
  int startIndex = 0;
  ScrollController _scrollController = ScrollController();
  String loadText = '加载中...';
  LoadIngStatus loadStatus = LoadIngStatus.STATUS_IDEL;

  Future<List<IncModelT1348648517839>> getData() async {
    modes.clear();
    final response = await http
        .get('http://c.3g.163.com/nc/article/list/T1348648517839/0-10.html');
    if (response.statusCode == 200) {
      print(response.body);
      Map<String, dynamic> json = jsonDecode(response.body);
      IncModelEntity model = IncModelEntity().fromJson(json);
      modes = model.t1348648517839;
//      modes.addAll(model.t1348648517839);
      setState(() {});
    } else {
      print('哈哈哈哈哈哈');
    }
  }

  @override
  void initState() {
    super.initState();
    getData();
    this._scrollController.addListener(() {
      if (this._scrollController.position.pixels ==
          this._scrollController.position.maxScrollExtent) {
        getMoreData(startIndex += 10);
      }
    });
  }

  Future getMoreData(int index) async {
    if (loadStatus == LoadIngStatus.STATUS_IDEL)
      setState(() {
        loadStatus == LoadIngStatus.STATUS_LOADING;
      });
    var url =
        'http://c.3g.163.com/nc/article/list/T1348648517839/$startIndex-10.html';
    print('URL==$url');
    var response = await http.get(url);
    Map<String, dynamic> json = jsonDecode(response.body);
    IncModelEntity model = IncModelEntity().fromJson(json);
    setState(() {
      modes.addAll(model.t1348648517839);
      loadStatus == LoadIngStatus.STATUS_IDEL;
      loadText = '加载中...';
    });
  }

  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context, width: 375, height: 812,allowFontScaling: true);
    if (modes.length == 0) {
      return CupertinoActivityIndicator();
    }
    return Container(
      child: EasyRefresh(
        header: ClassicalHeader(
          refreshedText: '刷新完成',
          refreshingText: '加载中..',
          refreshReadyText: '松开刷新',
            infoText:'',
          refreshText: '下拉刷新',
        ),
        child: ListView.separated(
          separatorBuilder: (BuildContext context, int index) {
            return Divider(
              color: Colors.grey[300],
              height: 0.5,
            );
          },
          itemCount: modes.length + 1,
          itemBuilder: (context, index) {
            if (index == modes.length &&
                loadStatus == LoadIngStatus.STATUS_IDEL) {
              return refreshFooter();
            } else {
              IncModelT1348648517839 model = modes[index];
              if (model.imgextra != null) {
                return buildImageRow(modes[index]);
              } else {
                return BuildRowWithModel(modes[index]);
              }
            }
          },
          controller: _scrollController,
        ),
        onRefresh: () async {
          getData();
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
  bool get wantKeepAlive => true;
}

buildImageRow(IncModelT1348648517839 model) {
  List<String> images = [];
  images.add(model.imgsrc);
  for (int i = 0; i < model.imgextra.length; i++) {
    List<String> imgs = [];
    IncModelT1348648517839Imgextra imagemodel = model.imgextra[i];
    imgs.add(imagemodel.imgsrc);
    images.addAll(imgs);
  }
  List<Widget> imageWidgets = [];

  double imageW = (ScreenUtil.screenWidthDp-27)/3;
  for (int i = 0; i < images.length; i++) {
    imageWidgets.add(
      Container(
        width: imageW,
        height: 80,
        child: Image.network(
          images[i],
          fit: BoxFit.cover,
        ),
      ),
    );
  }
  return Container(
    height: 160,
    padding: EdgeInsets.only(left: 10, top: 10, right: 10),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          model.title,
          maxLines: 2,
          style: TextStyle(fontWeight: FontWeight.bold,fontSize: 17),
        ),
        Padding(padding: EdgeInsets.only(bottom: 10)),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: imageWidgets,
        ),
        Padding(padding: EdgeInsets.only(bottom: 10)),
        Text('${model.source} ${model.replyCount}跟帖',style: TextStyle(fontSize: 14,color: Colors.black54),),
      ],
    ),
  );
}

Widget BuildRowWithModel(IncModelT1348648517839 model) {
  return Container(
    margin: EdgeInsets.only(left: 16,top: 16,right: 16,bottom: 10),
    child: Column(
      children: <Widget>[
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Expanded(
              flex: 2,
              child: Container(
                height: 100,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      model.title,
                      style: TextStyle(fontWeight: FontWeight.bold,fontSize: 17),
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
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
                width: 100,
                height: 80,
                child: Image.network(
                  model.imgsrc,
                  fit: BoxFit.cover,
                ),
              ),
            ),
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
