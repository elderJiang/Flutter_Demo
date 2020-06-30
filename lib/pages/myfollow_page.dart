import 'dart:ui';
import 'dart:ui' as prefix1;

import 'package:flutter/cupertino.dart';
import 'package:flutter/cupertino.dart' as prefix0;
import 'package:flutter/material.dart';
import 'package:flutter/material.dart' as prefix2;
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutterappmmmm/pages/me_page.dart';

class MyFollow extends StatefulWidget {
  @override
  _MyFollowState createState() => _MyFollowState();
}

class _MyFollowState extends State<MyFollow> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        header(),
        hotTuiJian(),
        Padding(padding: EdgeInsets.only(bottom: 10)),
        guessulike(),
        guessulike(),
        guessulike(),
        guessulike(),
        guessulike(),

      ],
    );
  }

  Widget header() {
    return Container(
      color: Colors.white,
      margin: EdgeInsets.only(bottom: 10),
      padding: EdgeInsets.only(top: 30, bottom: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          Text('登录后再关注，内容更新随时看'),
          Padding(padding: EdgeInsets.only(bottom: 10)),
          Container(
            height: 30,
            decoration: BoxDecoration(
              color: Colors.red,
              borderRadius: BorderRadius.all(Radius.circular(15)),
            ),
            child: FlatButton(
              onPressed: () {
                showModalBottomSheet(
                    context: context,
                    builder: (BuildContext context) {
//                      return loginView();
                      return Stack(
                        children: <Widget>[
                          Container(
                            height: 25,
                            width: double.infinity,
                            color: Colors.black54,
                          ),
                          loginView(() {
                            Navigator.pop(context);
                          }),
                        ],
                      );
                    });
              },
              child: Text(
                '登录',
                style: TextStyle(color: Colors.white, fontSize: 15),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

//猜你喜欢
guessulike() {
  return Container(
    color: Colors.white,
    height: 200,
    padding: EdgeInsets.all(16),
    margin: EdgeInsets.only(top: 10),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text('猜你喜欢'),
        Padding(padding: EdgeInsets.only(bottom: 16)),
        Divider(
          color: Colors.black12,
          height: 0.5,
          indent: 0,
          endIndent: 0,
        ),
        Padding(padding: EdgeInsets.only(bottom: 10)),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Container(
              child: Row(
                children: <Widget>[
                  CircleAvatar(
                    backgroundImage: NetworkImage('https://dss2.bdstatic.com/70cFvnSh_Q1YnxGkpoWK1HF6hhy/it/u=3107083461,4268460867&fm=111&gp=0.jpg'),
                    radius: 15,
                  ),
                  Padding(padding: EdgeInsets.only(left: 5)),
                  Text('和讯网'),
                ],
              ),
            ),
            FlatButton(
                onPressed: () {},
                child: Container(
                  width: 70,
                  height: 32,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(16)),
                    color: Colors.red,
                  ),
                  child: Center(
                      child: Text(
                    '关注',
                    style: TextStyle(color: Colors.white, fontSize: 15),
                  )),
                )),
          ],
        ),
        Padding(padding: EdgeInsets.only(bottom: 10)),
        Row(
          children: <Widget>[
            Expanded(
              flex: 3,
              child: Text('"损害印度安全！"印度官方：禁用59款中国APP，包括抖音，快手等，，包括抖音，快手等，包括抖音，快手等',style: TextStyle(fontSize: 16),maxLines: 2,overflow: TextOverflow.ellipsis,),
              
            ),
            Expanded(
              flex: 1,
              child: Image.network('https://dss0.bdstatic.com/70cFvHSh_Q1YnxGkpoWK1HF6hhy/it/u=3256100974,305075936&fm=26&gp=0.jpg',width: 80,height: 60,fit: BoxFit.cover,),
            ),
          ],
        ),
      ],
    ),
  );
}

//登录
loginView(Function dismiss) {
  return Container(
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.only(
          topRight: Radius.circular(10), topLeft: Radius.circular(10)),
    ),
    height: 330,
    child: Column(
      children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            IconButton(icon: Icon(Icons.close), onPressed: dismiss),
            Padding(
              padding: EdgeInsets.only(left: 80),
            ),
            Text(
              '一键登录，发现更多精彩',
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 16),
            ),
          ],
        ),
        Padding(padding: EdgeInsets.only(top: 20)),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Text(
              '176 **** 7023',
              style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.black),
            ),
            Padding(padding: EdgeInsets.only(bottom: 10)),
            FlatButton(
              onPressed: () {},
              child: Container(
                height: 40,
                width: 250,
                decoration: BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                ),
                child: Center(
                  child: Text(
                    '本机号码一键登录',
                    style: TextStyle(
                        fontSize: 16,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
            FlatButton(
                onPressed: () {},
                child: Text(
                  '切换手机号>',
                  style: TextStyle(color: Colors.red, fontSize: 13),
                )),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            getIconButton('images/wechat.png'),
            getIconButton('images/QQ.png'),
            getIconButton('images/weibo.png'),
            getIconButton('images/email.png'),
            getIconButton('images/apple.png'),
          ],
        ),
        Padding(padding: EdgeInsets.only(bottom: 10)),
        Text(
          '登录即代表您已阅读并同意',
          style: TextStyle(fontSize: 12, color: Colors.black54),
        ),
        Padding(
          padding: EdgeInsets.only(bottom: 10),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Text(
              '服务条款',
              style: TextStyle(
                  fontSize: 13,
                  color: Colors.black87,
                  decoration: TextDecoration.underline),
            ),
            Padding(
              padding: EdgeInsets.only(right: 10),
            ),
            Text(
              '隐私政策',
              style: TextStyle(
                  fontSize: 13,
                  color: Colors.black87,
                  decoration: TextDecoration.underline),
            ),
            Padding(
              padding: EdgeInsets.only(right: 10),
            ),
            Text(
              '中国联通认证服务协议',
              style: TextStyle(
                  fontSize: 13,
                  color: Colors.black87,
                  decoration: TextDecoration.underline),
            ),
          ],
        ),
      ],
    ),
  );
}

getIconButton(String icon) {
  return Container(
    width: 50,
    height: 50,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.all(Radius.circular(25)),
      border: Border.all(color: Colors.black12, width: 0.5),
    ),
    child: Center(
      child: Image.asset(icon),
    ),
  );
}

header() {
  return Container(
    color: Colors.white,
    padding: EdgeInsets.only(left: 16, top: 16, right: 0),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Text(
          '热门用户推荐',
          style: TextStyle(
              fontSize: 17, fontWeight: FontWeight.bold, color: Colors.black),
        ),
        FlatButton(
          onPressed: () {},
          child: Text(
            '更多用户 >',
            style: TextStyle(color: Colors.black26, fontSize: 15),
          ),
        ),
      ],
    ),
  );
}

Widget hotTuiJian() {
  return Container(
    padding: EdgeInsets.only(top: 16, bottom: 16, left: 0),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        header(),
//        Padding(
//          padding: EdgeInsets.only(bottom: 20),
//        ),
        Container(
          height: 300,
          color: Colors.white,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: <Widget>[
              hotWidget(),
              hotWidget(),
              hotWidget(),
            ],
          ),
        ),
      ],
    ),
  );
}

followRow() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: <Widget>[
      FlatButton(
          onPressed: () {},
          child: Row(
            children: <Widget>[
              Icon(
                Icons.add,
                color: Colors.red,
                size: 20,
              ),
              Text(
                '关注',
                style: prefix0.TextStyle(
                    color: Colors.red,
                    fontSize: 16,
                    fontWeight: FontWeight.bold),
              )
            ],
          )),
    ],
  );
}

Widget hotWidget() {
  return Container(
    decoration: BoxDecoration(
      color: Colors.white,
      border: Border.all(
        color: Colors.grey,
        width: 0.5,
      ),
    ),
    padding: EdgeInsets.fromLTRB(16, 16, 16, 0),
    margin: EdgeInsets.only(right: 0, left: 16),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            CircleAvatar(
              backgroundImage: NetworkImage(
                  'https://dss0.bdstatic.com/70cFvHSh_Q1YnxGkpoWK1HF6hhy/it/u=3256100974,305075936&fm=26&gp=0.jpg'),
              radius: 20,
            ),
            Padding(padding: EdgeInsets.only(right: 5)),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  '狗哥杰克苏',
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                ),
                Text(
                  '8.0万人关注',
                  style: TextStyle(fontSize: 12, color: Colors.black26),
                ),
              ],
            ),
            Padding(padding: EdgeInsets.only(right: 20)),
            Container(
              margin: EdgeInsets.only(right: 16),
              child: FlatButton(
                  onPressed: () {},
                  child: Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.grey,
                  )),
            )
          ],
        ),
        Padding(padding: EdgeInsets.only(bottom: 8)),
        Text(
          '卫星龚粽狗哥杰克苏一起聊天',
          style: TextStyle(color: Colors.grey, fontSize: 12),
        ),
        Padding(padding: EdgeInsets.only(bottom: 8)),
        Container(
          height: 150,
          width: 320,
          child: getItemCenterImage([
            'https://dss1.bdstatic.com/70cFuXSh_Q1YnxGkpoWK1HF6hhy/it/u=3892521478,1695688217&fm=26&gp=0.jpg',
            'https://dss0.bdstatic.com/70cFuHSh_Q1YnxGkpoWK1HF6hhy/it/u=1906469856,4113625838&fm=26&gp=0.jpg',
            'https://dss2.bdstatic.com/70cFvnSh_Q1YnxGkpoWK1HF6hhy/it/u=3984473917,238095211&fm=26&gp=0.jpg',
          ]),
        ),
        Container(
//          color: Colors.orange,
          width: 320,
          child: followRow(),
        ),
      ],
    ),
  );
}

getItemCenterImage(List imgs) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: <Widget>[
      Container(
        height: 150,
        width: 100,
        child: Stack(
          children: <Widget>[
            Positioned(
              top: 0,
              left: 0,
              bottom: 0,
              right: 0,
              child: ClipRRect(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(5),
                    bottomLeft: Radius.circular(5)),
                child: Image.network(
                  imgs[0],
                  fit: BoxFit.fill,
                ),
              ),
            ),
            Positioned(
              top: 20,
              left: 20,
              right: 20,
              child: Image.asset('images/play.png',width: 40,height: 40,),
            ),
            Positioned(
              bottom: 20,
              left: 10,
              right: 10,
              height: 40,
              child: Container(
                child: Text(
                  '哈哈哈哈哈哈哈哈哈',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 13,
                      fontWeight: FontWeight.normal),
                  maxLines: 3,
                ),
              ),
            ),
          ],
        ),
      ),
      Padding(padding: EdgeInsets.only(right: 2)),
      Container(
        height: 150,
        width: 100,
        child: Stack(
          children: <Widget>[
            Positioned(
              top: 0,
              left: 0,
              bottom: 0,
              right: 0,
              child: Image.network(
                imgs[1],
                fit: BoxFit.fill,
              ),
            ),
          ],
        ),
      ),
      Padding(padding: EdgeInsets.only(right: 2)),
      Container(
        height: 150,
        width: 100,
        child: Stack(
          children: <Widget>[
            Positioned(
              top: 0,
              left: 0,
              bottom: 0,
              right: 0,
              child: ClipRRect(
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(5),
                    bottomRight: Radius.circular(5)),
                child: Image.network(
                  imgs[2],
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ],
        ),
      ),
    ],
  );
}

Widget hotCardWidget(String imgurl, String descrip, BorderRadius radius) {
  return Container(
    width: 100,
    height: 150,
    decoration: BoxDecoration(
      borderRadius: radius,
    ),
    child: Stack(
      children: <Widget>[
        Positioned(
          top: 0,
          left: 0,
          bottom: 0,
          right: 0,
          child: Image.network(
            imgurl,
            fit: BoxFit.cover,
          ),
        ),
      ],
    ),
  );
}

