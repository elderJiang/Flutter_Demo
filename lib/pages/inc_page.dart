import 'dart:convert';
import 'dart:core' as prefix0;
import 'dart:core';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyrefresh/easy_refresh.dart';
import 'package:flutterappmmmm/generated/json/base/json_convert_content.dart';
import 'package:http/http.dart' as http;
import 'package:flutterappmmmm/Models/inc_model_entity.dart';
import 'package:flutterappmmmm/generated/json/inc_model_entity_helper.dart';
import 'package:flutter_swiper/flutter_swiper.dart'; // 引入头文件

class IncPage extends StatefulWidget {
  @override
  _IncPageState createState() => _IncPageState();
}

class _IncPageState extends State<IncPage> {
  List<IncModelT1348648517839> modes = [];

  Future<List<IncModelT1348648517839>> getData() async {
    final response = await http
        .get('http://c.3g.163.com/nc/article/list/T1348648517839/0-10.html');
    if (response.statusCode == 200) {
      print(response.body);
      Map<String, dynamic> json = jsonDecode(response.body);
//     List<IncModelT1348648517839> models = JsonConvert.fromJsonAsT(json);
      IncModelEntity model = IncModelEntity().fromJson(json);
//      print(models);
//      print(model.t1348648517839.length);
      modes = model.t1348648517839;
//      setState(() {
//      });
//      print(modes[0].imgextra.length);
      return model.t1348648517839;
    } else {
      print('哈哈哈哈哈哈');
    }
  }

//  @override
//  void initState() {
//    // TODO: implement initState
//    super.initState();
//    getData();
//  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: getData(),
      builder: (BuildContext context, AsyncSnapshot<List> snapshot) {
//        print('数据数据${snapshot.data.length}');
        return Container(
          child: EasyRefresh(
            child: ListView.builder(
                itemCount: snapshot.data.length + 1,
                itemBuilder: (context, index) {
                  if (index == 0) {
                    return incHeader(snapshot.data[index]);
                  } else {
                    return Text('$index}');
                  }
                }),
            onRefresh: () async {
              getData();
            },
          ),
        );
      },
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

//        return Container(
//          decoration: BoxDecoration(
//            image: DecorationImage(
//              image: NetworkImage('sss'),
//              fit: BoxFit.cover,
//            ),
//            borderRadius: BorderRadius.all(Radius.circular(10.0)),
//          ),
//        );
        },

        pagination: SwiperPagination(
          alignment: Alignment.bottomRight,
          margin: EdgeInsets.fromLTRB(0, 0, 20, 10),
//          builder: DotSwiperPaginationBuilder(
//            color: Colors.black,
//            activeColor: Colors.white,
//          ),
        ),
        controller: SwiperController(),
        scrollDirection: Axis.horizontal,
        autoplay: false,
        onTap:(index)=>print('点击了第$index'),
      ),
    );
  }
}
