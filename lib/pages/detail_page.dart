import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'post_data.dart';

class DetailPage extends StatelessWidget {
  final Post product;

  DetailPage({Key key, @required this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('详情'),
        elevation: 0.0,
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            Image.network(product.imageUrl),
            Text(product.title),
            Text(product.author),
            Text(product.description),
          ],
        ),
      ),
    );
  }
}
