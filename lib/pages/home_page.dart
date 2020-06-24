import 'dart:convert';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:fluttertoast/fluttertoast.dart';
import 'post_data.dart';
import 'detail_page.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>with AutomaticKeepAliveClientMixin {
  @override
  Widget build(BuildContext context) {
    return HomeList();
  }

  @override
  // TODO: implement wantKeepAlive
  bool get wantKeepAlive => true;
}

class HomeList extends StatefulWidget {
  @override
  _HomeListState createState() => _HomeListState();
}

class _HomeListState extends State<HomeList>
    with AutomaticKeepAliveClientMixin {
  @override
  // TODO: implement wantKeepAlive
  bool get wantKeepAlive => true;

  @override
  void initState() {
    super.initState();
  }

  Future<List<Post>> fetchPosts() async {
    final response =
        await http.get('https://resources.ninghao.net/demo/posts.json');
    if (response.statusCode == 200) {
      final responseBody = json.decode(response.body);
      List<Post> posts = responseBody['posts']
          .map<Post>((item) => Post.fromJson(item))
          .toList();
      return posts;
    } else {
      throw Exception(' 获取数据失败');
    }
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);
//    return FutureBuilder(
//      future: fetchPosts(),
//      builder: (BuildContext context, AsyncSnapshot snapshot) {
//        if (snapshot.connectionState == ConnectionState.waiting) {
//        }
//        return ListView(
//          children: snapshot.data.map<Widget>((item) {
//            return Container(
//              child: Column(
//                children: <Widget>[
//                  FlatButton(
//                    splashColor: Color.fromARGB(0, 0, 0, 0),
//                    onPressed: () {
//                      Navigator.push(context, MaterialPageRoute(builder: (context)=>DetailPage(product: item)));
//                    },
//                    child: ListTile(
//                      title: Text(item.title),
//                      subtitle: Text(item.author),
//                      leading: CircleAvatar(
//                        backgroundImage: NetworkImage(item.imageUrl),
//                      ),
//                    ),
//                  ),
//                  Divider(
//                    height: 10.0,
//                    indent: 70.0,
//                    color: Colors.black12,
//                  ),
//                ],
//              ),
//            );
//          }).toList(),
//        );
//      },
//    );
    return DefaultTabController(
        length: 2,
        child:Scaffold(
          appBar: AppBar(
            title: Container(
              width: 100,
              height: 50,
              color: Colors.orange,
              child: Center(
                child: Container(
                  width: 100,
                  height: 50,
                  color: Colors.red,
                ),
              ),
            ),
            bottom: PreferredSize(child: TabBar(tabs: [Tab(text: '111',),Tab(text: '2222',)]), preferredSize: Size.fromHeight(20)),
          ),
          body: TabBarView(
            children: <Widget>[
              Center(child: Text('11111'),),
              Center(child: Text('22222'),),
            ],
          ),
          ),
        );


  }
}
