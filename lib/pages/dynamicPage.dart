import 'package:flutter/material.dart';


class DynamicPage extends StatefulWidget {
  @override
  _DynamicPageState createState() => _DynamicPageState();
}

class _DynamicPageState extends State<DynamicPage> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Container(
        color: Colors.yellow,
        child: Center(
          child: Text(
            '动态',
            style: TextStyle(fontSize: 48, color: Colors.white),
            ),
          ),
      )
    );
  }
}
