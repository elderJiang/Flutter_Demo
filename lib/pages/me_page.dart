import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterappmmmm/pages/shop_page.dart';

class MePage extends StatefulWidget {
  @override
  _MePageState createState() => _MePageState();
}

class _MePageState extends State<MePage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey[200],
      child: ListView(
        children: <Widget>[
          HeadCard(),
          MiddleWidget(),
          DongtaiWiget(),
          TowRowWidget(),
          BottomFourWidget(),
          bottomThreeWidget(),
          Container(
            height: 70,
//            color: Colors.orange,
            child: Center(
              child: Text('~设置人口挪到页面顶部了呦~'),
            ),
          )
        ],
      ),
    );
  }
}

//头部Header
Widget HeadCard() {
  return Container(
    height: 300,
    margin: EdgeInsets.only(left: 20, top: 20, right: 20),
    child: Column(
      children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            ButtomWiget('设置', Icons.settings, true),
            ButtomWiget('消息', Icons.message, true),
          ],
        ),
        SizedBox(
          height: 30,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            ButtomWiget(null, Icons.phone, false),
            ButtomWiget(null, Icons.whatshot, false),
            ButtomWiget(null, Icons.add_comment, false),
            ButtomWiget(null, Icons.web, false),
          ],
        ),
        Container(
          width: 120,
          height: 40,
          margin: EdgeInsets.only(top: 30),
          child: FlatButton(
            onPressed: () {},
            child: Text(
              '登录/注册',
              style: TextStyle(color: Colors.white),
            ),
            color: Colors.red,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(20)),
            ),
          ),
        ),
        Container(
          margin: EdgeInsets.only(top: 30),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              ImageButton('动态', 'images/dongtai.png'),
              ImageButton('跟帖', 'images/xiaoxi.png'),
              ImageButton('收藏', 'images/shoucang.png'),
              ImageButton('历史', 'images/lishi.png'),
            ],
          ),
        )
      ],
    ),
  );
}

Widget ButtomWiget(title, icon, bool havetitle) {
  bool _haveTitle;
  if (havetitle) {
    return Container(
      width: 80,
      height: 40,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20.0),
        border: Border.all(color: Colors.grey[500], width: 1),
      ),
      child: FlatButton(
        onPressed: () {},
        child: Row(
          children: <Widget>[
            Icon(
              icon,
              size: 15,
            ),
            Text(title),
          ],
        ),
      ),
    );
  } else {
    return Container(
      width: 50,
      height: 50,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25),
        border: Border.all(color: Colors.grey[500], width: 1),
      ),
      child: FlatButton(
        onPressed: () {},
        child: Container(
          alignment: Alignment.center,
          child: Icon(
            icon,
            size: 20,
          ),
        ),
      ),
    );
  }
}

Widget ImageButton(title, imagestr) {
  return Container(
//    color: Colors.orange,
    width: 50,
    height: 60,
    child: Column(
      children: <Widget>[
        Container(
          child: Image.asset(imagestr),
        ),
        Container(
          margin: EdgeInsets.only(top: 5),
          child: Text(
            title,
            style: TextStyle(fontSize: 12),
          ),
        ),
      ],
    ),
  );
}

//中间
Widget MiddleWidget() {
  return Container(
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.all(Radius.circular(8)),
    ),
    margin: EdgeInsets.only(
      left: 20,
      right: 20,
      bottom: 10,
    ),
    height: 100,
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: <Widget>[
        ImageButton('我的关注', 'images/dongtai.png'),
        ImageButton('任务中心', 'images/xiaoxi.png'),
        ImageButton('金币商城', 'images/shoucang.png'),
        ImageButton('会员中心', 'images/lishi.png'),
      ],
    ),
  );
}

//发布动态
Widget DongtaiWiget() {
  return Container(
    height: 60,
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.all(Radius.circular(8)),
    ),
    margin: EdgeInsets.only(left: 20, right: 20),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Container(
          padding: EdgeInsets.only(left: 20),
          child: Text('发布我的动态'),
        ),
        Container(
//          margin: EdgeInsets.only(right: 20),
          child: FlatButton(
            onPressed: () {},
            child: Container(
              width: 80,
              height: 40,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: Colors.red,
                borderRadius: BorderRadius.all(Radius.circular(20)),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Image.asset('images/fabu.png'),
                  Padding(padding: EdgeInsets.only(right: 5)),
                  Text(
                    '发布',
                    style: TextStyle(color: Colors.white, fontSize: 14),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    ),
  );
}

Widget TowRowWidget() {
  return Container(
    margin: EdgeInsets.only(top: 10, left: 20, right: 20),
    height: 110,
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.all(Radius.circular(8)),
    ),
    child: Column(
      children: <Widget>[
        CommonItem('深色模式', '去系统设置'),
        Divider(
          color: Colors.grey[300],
          indent: 20,
          endIndent: 20,
          height: 1,
        ),
        CommonItem('意见反馈', ''),
      ],
    ),
  );
}

Widget BottomFourWidget() {
  return Container(
    height: 210,
    margin: EdgeInsets.only(top: 10, left: 20, right: 20,bottom: 10),
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.all(Radius.circular(8)),
    ),
    child: Column(
      children: <Widget>[
        CommonItem('易览天下', '三分钟了解天下事'),
        Divider(
          color: Colors.grey[300],
          indent: 20,
          endIndent: 20,
          height: 1,
        ),
        CommonItem('意见反馈用户鉴贴', '邀你鉴定跟帖质量'),
        Divider(
          color: Colors.grey[300],
          indent: 20,
          endIndent: 20,
          height: 1,
        ),
        CommonItem('京东特供', '新人领188红包'),
        Divider(
          color: Colors.grey[300],
          indent: 20,
          endIndent: 20,
          height: 1,
        ),
        CommonItem('免流量看新闻', ''),
      ],
    ),
  );
}

Widget bottomThreeWidget() {
  return Container(
    height: 160,
    margin: EdgeInsets.only(top: 10, left: 20, right: 20),
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.all(Radius.circular(8)),
    ),
    child: Column(
      children: <Widget>[
        CommonItem('我的已购', '购买的课程/直播'),
        Divider(
          color: Colors.grey[300],
          indent: 20,
          endIndent: 20,
          height: 1,
        ),
        CommonItem('我的钱包', ''),
        Divider(
          color: Colors.grey[300],
          indent: 20,
          endIndent: 20,
          height: 1,
        ),
        CommonItem('扫一扫', ''),


      ],
    ),
  );
}

Widget CommonItem(title, subtitle) {
  String subtitleStr = subtitle.toString();
  return Container(
    height: 50,
    child: Row(
      children: <Widget>[
        Container(
          margin: EdgeInsets.only(left: 20),
          child: Text(title),
        ),
        Expanded(
          flex: 5,
          child: Container(
            alignment: Alignment.centerRight,
            child: Text(
              subtitleStr.length > 0 ? subtitleStr : '',
              style: TextStyle(color: Colors.grey[400]),
            ),
          ),
        ),
        Expanded(
          flex: 1,
          child: Container(
            width: 50,
//            color: Colors.orange,
//            alignment: Alignment.r,
            child: Icon(
              Icons.arrow_forward_ios,
              color: Colors.grey[500],
              size: 20,
            ),
          ),
        ),
      ],
    ),
  );
}
