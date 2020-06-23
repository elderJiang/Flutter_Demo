import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ShopPage extends StatefulWidget {
  @override
  _ShopPageState createState() => _ShopPageState();
}

class _ShopPageState extends State<ShopPage> {

  List <Widget> _wigets = [getCommonItem(0),getImageItem(0)];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 1,
      itemBuilder: (context, index) {
        return getImageItem(index);

      },
    );
  }
}

Widget getCommonItem(index) {
  return FlatButton(
    child: Container(
      child: Row(
        children: <Widget>[
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              Container(
                width: 200,
                height: 60,
//                color: Colors.orange,
                padding: EdgeInsets.only(top: 10),
                child: Text(
                  '印军方授权一线部队使用武器?媒体:印度或付出代价',
                  overflow: TextOverflow.ellipsis,
                  maxLines: 2,
                ),
              ),
              Container(
                width: 200,
                margin: EdgeInsets.only(top: 10),
//                color: Colors.amber,
                alignment: Alignment.topLeft,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Container(
//                      color: Colors.orange,
                      child: Text(
                        '热门',
                        style: TextStyle(color: Colors.red, fontSize: 14),
                      ),
                      alignment: Alignment.topLeft,
                    ),
                    Text(
                      '环球时报',
                      style: TextStyle(color: Colors.black12),
                    ),
                    TagWiget(),
                  ],
                ),
              ),
            ],
          ),
          Expanded(
            flex: 1,
            child: AspectRatio(
              aspectRatio: 3 / 2,
              child: Container(
                margin: EdgeInsets.only(left: 20),
                foregroundDecoration: BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage(
                        'http://cms-bucket.ws.126.net/2020/0623/69c7d26fp00qccouz00msc000s600e3c.png'),
                  ),
                  borderRadius: BorderRadius.all(Radius.circular(6.0)),
                ),
              ),
            ),
          ),
        ],
      ),
    ),
    onPressed: () {},
  );
}

Widget getImageItem(index) {
  return FlatButton(
      onPressed: () {},
      child: Container(
        color: Colors.orange,
        margin: EdgeInsets.all(20),
        height: 200,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Expanded(
              flex: 1,
              child: Text('鞠婧祎为显脸小戴大号口罩？网友吐槽：做作！'),
            ),
            Expanded(
              flex: 2,
              child: imageWidget(),
            ),
            Expanded(
              flex: 1,
              child: Text('读史 259跟帖'),
            ),
          ],
        ),
      ));
}

class imageWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[

          Image.network('http://cms-bucket.ws.126.net/2020/0623/13b066f7p00qccet800f6c000s600e3c.png'),
          Image.network('http://cms-bucket.ws.126.net/2020/0622/140538edp00qcbbv3002jc0009c005uc.png'),
          Image.network('http://cms-bucket.ws.126.net/2020/0623/69e81f45p00qccpkx003oc0009c005uc.png'),

        ],
      ),
    );
  }
}

class TagWiget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 24,
      width: 60,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.red, width: 0.5),
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(12)),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
//          Icon(Icons.hot_tub),
          Text(
            '2.5万跟帖',
            style: TextStyle(color: Colors.red, fontSize: 9),
          ),
        ],
      ),
    );
  }
}
