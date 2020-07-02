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
        await PaletteGenerator.fromImageProvider(NetworkImage(
            widget.imageurl));
    if (paletteGenerator != null && paletteGenerator.colors.isNotEmpty) {
      maincolor = paletteGenerator.colors.toList()[0];
    }
    setState(() {
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: maincolor,
      appBar: AppBar(
        title: Text('HeroTest'),
      ),
      body: herotest(widget.imageurl),
    );
  }
}

screentool(){
  return Column(
    children: <Widget>[
      Text('设备宽度:${ScreenUtil.screenWidth}'),
      Text('设备高度:${ScreenUtil.screenHeight}'),
      Text('设备高度:${ScreenUtil.screenHeightDp}dp'),
      Text('设备的像素密度:${ScreenUtil.pixelRatio}'),
      Text('底部安全区距离:${ScreenUtil.bottomBarHeight}dp'),
      Text('状态栏高度:${ScreenUtil.statusBarHeight}dp'),

    ],
  );
}

herotest(imgurl){
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

testWidget(){

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