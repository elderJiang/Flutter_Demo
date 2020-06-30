import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MyAppBar extends StatelessWidget implements PreferredSizeWidget{
  @override
  Widget build(BuildContext context) {
    return PreferredSize(
      preferredSize: Size(null, 100),
      child: Container(
//        decoration: BoxDecoration(),
        width: MediaQuery.of(context).size.width,
        height: 88,
        color: Colors.red,
        child: Container(
          margin: EdgeInsets.only(left: 20, top: 30),
          child: Row(
//            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Expanded(
                flex: 1,
                child: Container(
                  child: Image.asset('images/logo_tux.png'),
                ),
              ),
              Expanded(
                flex: 8,
                child: Container(
//                  color: Colors.orange,
                  margin: EdgeInsets.only(left: 20,bottom: 0),
                  height: 40,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                    color: Colors.white.withOpacity(0.3),
                  ),
                  child: Row(
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.only(left: 10),
                      ),
                      Icon(
                        Icons.search,
                        color: Colors.white,
                      ),
                      Padding(padding: EdgeInsets.only(right: 10)),
                      Text(
                        '请输入关键字',
                        style: TextStyle(color: Colors.white, fontSize: 17),
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                  flex: 3,
                  child: Container(
//                    color: Colors.orange,
                    margin: EdgeInsets.only(right: 0,left: 10),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Container(
                          width: 44,
                          child: FlatButton(
                            padding: EdgeInsets.all(0),
                            child: Icon(
                              Icons.whatshot,
                              size: 20,
                              color: Colors.white,
                            ),
                            onPressed: () {},
//                            color: Colors.white,
                          ),
                        ),
                        Container(
                          width: 44,
                          child: FlatButton(
                            padding: EdgeInsets.all(0),
                            child: Icon(
                              Icons.message,
                              size: 20,
                              color: Colors.white,
                            ),
                            onPressed: () {},
//                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  )),
            ],
          ),
        ),
      ),
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size(750, 105);
}
