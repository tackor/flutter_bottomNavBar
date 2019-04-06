import 'package:flutter/material.dart';


class PinDaoPage extends StatefulWidget {
  @override
  _PinDaoPageState createState() => _PinDaoPageState();
}

class _PinDaoPageState extends State<PinDaoPage> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Container(
        color: Colors.blue,
        child: Center(
          child: Text(
            '频道',
            style: TextStyle(fontSize: 48, color: Colors.white),
            ),
          ),
      )
    );
  }
}
