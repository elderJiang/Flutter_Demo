import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TJVideoPage extends StatefulWidget {
  @override
  _TJVideoPageState createState() => _TJVideoPageState();
}

class _TJVideoPageState extends State<TJVideoPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.builder(
        itemCount: 10,
        itemBuilder: (context, index) {
          return getRow(index,context);
        },
      ),
    );
  }
}

getRow(int index,context) {
  return Container(
    height: 270,
    child: Column(
      children: <Widget>[
        Container(
          height: 200,
          child: Stack(
            children: <Widget>[
              Positioned.fill(
                  child: Image.network(
                'https://dss1.bdstatic.com/70cFuXSh_Q1YnxGkpoWK1HF6hhy/it/u=218511114,1745863589&fm=26&gp=0.jpg',
                fit: BoxFit.cover,
              )),
              Positioned(
                left: 20,
                top: 20,
                right: 20,
                child: Text(
                  '分钟地球数学能解释动物为什么会有条纹吗电缆字幕组',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                      color: Colors.white),
                  maxLines: 2,
                ),
              ),
              Positioned(
                left: 20,
                  top: 70,
                  child: Text(
                '123次播放',
                style: TextStyle(fontSize: 14, color: Colors.white),
              )),
              Positioned(
                left: MediaQuery.of(context).size.width/2-40,
                top: 80,
                width: 40,
                height: 40,
                child: Image.asset('images/play.png',color: Colors.white70,),
              ),
              Positioned(
                right: 20,
                bottom: 20,
                child: Text('03：34',style: TextStyle(fontSize: 14,color: Colors.white70),),
              ),
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.only(left: 20, right: 20, top: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Row(
                children: <Widget>[
                  CircleAvatar(
                    backgroundImage: NetworkImage(
                        'https://dss3.bdstatic.com/70cFv8Sh_Q1YnxGkpoWK1HF6hhy/it/u=1005382251,3596345746&fm=111&gp=0.jpg'),
                    radius: 15,
                  ),
                  Padding(padding: EdgeInsets.only(right: 5)),
                  Text('搜剧小妹'),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Icon(Icons.file_upload),
                  Padding(padding: EdgeInsets.only(right: 20)),
                  Icon(Icons.message),
                  Padding(padding: EdgeInsets.only(right: 20)),
                  Icon(Icons.share),
                  Padding(padding: EdgeInsets.only(right: 20)),
                  Icon(Icons.more_horiz),
                ],
              ),
            ],
          ),
        ),
      ],
    ),
  );
}
