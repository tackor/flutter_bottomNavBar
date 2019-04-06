import 'package:flutter/material.dart';


class MyPage extends StatefulWidget {
  @override
  _MyPageState createState() => _MyPageState();
}

class _MyPageState extends State<MyPage> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Container(
        color: Colors.cyan,
        child: Center(
          child: Text(
            '我的',
            style: TextStyle(fontSize: 48, color: Colors.white),
            ),
          ),
      )
    );
  }
}
