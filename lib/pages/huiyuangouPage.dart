import 'package:flutter/material.dart';


class HuiYuanGouPage extends StatefulWidget {
  @override
  _HuiYuanGouPageState createState() => _HuiYuanGouPageState();
}

class _HuiYuanGouPageState extends State<HuiYuanGouPage> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Container(
        color: Colors.purple,
        child: Center(
          child: Text(
            '会员购',
            style: TextStyle(fontSize: 48, color: Colors.white),
            ),
          ),
      )
    );
  }
}
