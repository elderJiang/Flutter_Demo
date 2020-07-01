import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ShortVideoPage extends StatefulWidget {
  @override
  _ShortVideoPageState createState() => _ShortVideoPageState();
}

class _ShortVideoPageState extends State<ShortVideoPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: GridView.builder(
          itemCount: 20,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisSpacing: 2,
            crossAxisSpacing: 2,
            childAspectRatio: 8 / 12.5,
          ),
          itemBuilder: (BuildContext context, int index) {
            return getItem(index);
          }),
    );
  }
}

getItem(int index) {
  return Container(
    child: Stack(
      children: <Widget>[
        Positioned.fill(
          child: Image.network(
            'https://dss1.bdstatic.com/70cFuXSh_Q1YnxGkpoWK1HF6hhy/it/u=1089874897,1268118658&fm=26&gp=0.jpg',
            fit: BoxFit.cover,
          ),
        ),
        Positioned(
          left: 10,
          bottom: 20,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Icon(
                Icons.play_arrow,
                size: 20,
                color: Colors.white70,
              ),
              Padding(padding: EdgeInsets.only(right: 5)),
              Text(
                '29.3万播放 25434赞',
                style: TextStyle(fontSize: 12, color: Colors.white70),
              ),
            ],
          ),
        ),
        Positioned(
          left: 10,
          right: 20,
          bottom: 50,
          child: Text(
            '天若有情天亦老，我为长者续一秒',
            style: TextStyle(
                fontSize: 16, fontWeight: FontWeight.bold, color: Colors.white),
            maxLines: 2,
            textAlign: TextAlign.left,
            overflow: TextOverflow.ellipsis,
          ),
        ),
      ],
    ),
  );
}
