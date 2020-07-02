import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:palette_generator/palette_generator.dart';

class SportPageTabBar extends StatefulWidget {
  final String imageurl;

  const SportPageTabBar({Key key, this.imageurl}) : super(key: key);

  @override
  _SportPageTabBarState createState() => _SportPageTabBarState();
}

class _SportPageTabBarState extends State<SportPageTabBar> {
  Color maincolor = Color(0xffffffff);

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getMainColor();
  }

  Future getMainColor() async {
    PaletteGenerator paletteGenerator =
        await PaletteGenerator.fromImageProvider(NetworkImage(widget.imageurl));
    if (paletteGenerator != null && paletteGenerator.colors.isNotEmpty) {
      maincolor = paletteGenerator.colors.toList()[0];
    }
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context, width: 375, height: 957);
//MediaQuery.removePadding(context: context, child: buildListView(),removeTop: true,);
    return Scaffold(
      backgroundColor: Colors.white,
//      appBar: AppBar(
//        title: Text('HeroTest'),
//      ),
      body: buildListView(),
    );
  }
}

buildListView() {
  return ListView(
    padding: EdgeInsets.only(top: 0),
    children: <Widget>[
      header(),
      tequan(),
    ],
  );
}

screentool() {
  return Column(
    children: <Widget>[
      Text('设备宽度:${ScreenUtil.screenWidth}'),
      Text('设备高度:${ScreenUtil.screenHeight}'),
      Text('设备高度:${ScreenUtil.screenHeightDp}dp'),
      Text('设备宽度:${ScreenUtil.screenWidthDp}dp'),
      Text('设备的像素密度:${ScreenUtil.pixelRatio}'),
      Text('底部安全区距离:${ScreenUtil.bottomBarHeight}dp'),
      Text('状态栏高度:${ScreenUtil.statusBarHeight}dp'),
      Container(
        color: Colors.orange,
        width: ScreenUtil().setWidth(100),
//        height: ScreenUtil().setHeight(100),
        height: ScreenUtil().setWidth(100),
      ),
    ],
  );
}

herotest(imgurl) {
  return Center(
    child: Container(
      child: Hero(
          tag: 'test',
          child: Image.network(
            imgurl,
            fit: BoxFit.cover,
          )),
    ),
  );
}

testWidget() {
  return Stack(
    children: <Widget>[
      Offstage(
        child: Container(
//          width: 100,
//          height: 100,
          color: Colors.orange,
        ),
        offstage: true,
      ),
      Offstage(
        child: Container(
//          width: 100,
//          height: 200,
          color: Colors.red,
        ),
        offstage: false,
      ),
    ],
  );
}

header() {
  double navH = ScreenUtil.statusBarHeight;

  return Container(
//    color: Colors.orange,
    height: ScreenUtil().setWidth(294),
    child: Stack(
      children: <Widget>[
        Positioned(
            bottom: 14,
            top: 0,
            right: 0,
            left: 0,
            child: Image.asset(
              'images/background.png',
              fit: BoxFit.fill,
            )),
        Positioned(
            child: Container(
          padding: EdgeInsets.fromLTRB(10, 10 + navH, 10, 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Row(
                children: <Widget>[
                  Icon(
                    Icons.local_gas_station,
                    color: Colors.white,
                  ),
                  Padding(padding: EdgeInsets.only(right: 5)),
                  Text(
                    '苏银凯基消费金融',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              IconButton(
                  icon: Icon(
                    Icons.settings_overscan,
                    color: Colors.white,
                  ),
                  onPressed: () {}),
            ],
          ),
        )),
        Positioned(
          left: 10,
          right: 10,
          bottom: 10,
          child: Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.all(Radius.circular(8)),
              boxShadow: [
                BoxShadow(
                    color: Colors.black54,
                    offset: Offset(0, 2),
                    spreadRadius: 2,
                    blurRadius: 3)
              ],
            ),
            width: ScreenUtil().setWidth(355),
//            height: ScreenUtil().setHeight(226),
            child: Column(
              children: <Widget>[
                Padding(padding: EdgeInsets.only(bottom: 18)),
                Text(
                  'Su贷·循环额度',
                  style: TextStyle(fontSize: 16, color: Color(0xFF696975)),
                ),
                Padding(padding: EdgeInsets.only(bottom: 5)),
                Text(
                  '200,000.00',
                  style: TextStyle(fontSize: 30, color: Color(0xFF3B3C44)),
                ),
                Padding(padding: EdgeInsets.only(bottom: 10)),
                Text(
                  '极速审批  通过率高  专属优惠',
                  style: TextStyle(color: Color(0xFFEF843E), fontSize: 14),
                ),
//                  Text('aaaaaaaa'),
//                  Text('aaaaaaaa'),
//                  Text('底部安全区距离:${ScreenUtil.bottomBarHeight}dp'),
//                  Text('状态栏高度:${ScreenUtil.statusBarHeight}dp'),
                Padding(padding: EdgeInsets.only(bottom: 20)),

                FlatButton(
                    onPressed: () {},
                    child: Container(
                      height: 40,
                      margin: EdgeInsets.only(left: 68, right: 68),
                      decoration: BoxDecoration(
                          color: Color(0xFF0185CC),
                          borderRadius: BorderRadius.all(Radius.circular(20))),
                      child: Center(
                        child: Text(
                          '立即申请',
                          style: TextStyle(color: Colors.white, fontSize: 18),
                        ),
                      ),
                    )),
                Padding(padding: EdgeInsets.only(bottom: 15)),
              ],
            ),
          ),
        ),
      ],
    ),
  );
}

tequan() {
  return Container(
    padding: EdgeInsets.all(10),
    margin: EdgeInsets.symmetric(horizontal: 10),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.all(Radius.circular(8)),
      color: Colors.white,
      boxShadow: [
        BoxShadow(
            color: Colors.black54,
            offset: Offset(0, 2),
            spreadRadius: 2,
            blurRadius: 3),
      ],
    ),
    child: Column(
      children: <Widget>[
        Row(
          children: <Widget>[
            Padding(padding: EdgeInsets.only(left: 20)),
            Text('尊享特权'),
          ],
        ),
        Padding(
          padding: EdgeInsets.only(bottom: 10),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            imageItem('images/huiyuanri.png','会员日',Color(0xFFB27511)),
            imageItem('images/yiyuanbaoyou.png','1元包邮',Color(0xFF3B609D)),
            imageItem('images/baokuanmiaosha.png','爆款秒杀',Color(0xFF317285)),
            imageItem('images/shengrijingxi.png','生日惊喜',Color(0xFF9B494F)),
          ],
        ),
      ],
    ),
  );
}

imageItem(String name,String title,Color textColor) {
  return Container(
    width: 76,
    height: 76,
    child: Stack(
      children: <Widget>[
        Positioned.fill(
            child: Image.asset(name),
        ),
        Positioned(
          top: 12,
          left: 10,
          right: 10,
          child: Text(title,style: TextStyle(color: textColor,fontSize: 14),),
        ),
      ],
    ),
  );
}
