import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'Sport_tab_page.dart';

class SportPage extends StatefulWidget {
  @override
  _SportPageState createState() => _SportPageState();
}

class _SportPageState extends State<SportPage> {

  List<String> imageurl = [
    'https://ss3.bdstatic.com/70cFv8Sh_Q1YnxGkpoWK1HF6hhy/it/u=3612597965,1770541226&fm=26&gp=0.jpg',
    'https://ss1.bdstatic.com/70cFvXSh_Q1YnxGkpoWK1HF6hhy/it/u=2980058772,3045215015&fm=26&gp=0.jpg',
    'https://img2.woyaogexing.com/2020/07/02/4afdf167d78248dbbfa9b75ebe45a57f!400x400.jpg',
    'https://ss0.bdstatic.com/70cFuHSh_Q1YnxGkpoWK1HF6hhy/it/u=1353946150,3306699532&fm=26&gp=0.jpg',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: InkWell(
          child: Hero(
              tag: 'test',
              child: ClipOval(
                child: Image.network(
                  imageurl[2].toString(),
                  width: 80,
                  height: 80,
                  fit: BoxFit.cover,
                ),
              )),
          onTap: () {
            Navigator.of(context)
                .push(MaterialPageRoute(builder: (BuildContext context) {
              return SportPageTabBar(imageurl:imageurl[2].toString(),);
            }));
          },
        ),
      ),
    );
  }
}
