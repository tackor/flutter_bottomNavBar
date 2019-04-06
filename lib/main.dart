import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

import 'pages/homePage.dart';
import 'pages/pindaoPage.dart';
import 'pages/dynamicPage.dart';
import 'pages/huiyuangouPage.dart';
import 'pages/myPage.dart';


/*
 * BottomNavigationBar + BottomNavigationBarItem 实现底部导航栏
 * 
 */ 
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      // home: MyHomePage(title: 'Flutter Demo Home Page'),
      home: MyHomePage(),
    );

  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  Color themeColor = Colors.pink[300];
  final appBarTitles = ['首页', '频道', '动态', '会员购', '我的'];

  final tabTextStyleSelected = new TextStyle(color: Colors.pink[300]);
  final tabTextStyleNormal = new TextStyle(color: const Color(0xff969696));
  int _tabIndex = 0;

  var tabImages;
  var _body;
  var pages;

  //自定义方法----------------------
  Image getTabImage(path) {
    return new Image.asset(path, width:24.0, height:24.0);
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    //pages ---------
    pages = <Widget>[
      HomePage(),
      PinDaoPage(),
      DynamicPage(),
      HuiYuanGouPage(),
      MyPage()
    ];

    if (tabImages == null) {
      tabImages = [
        [
          getTabImage('images/home_normal.png'),
          getTabImage('images/home_active.png')
        ],
        [
          getTabImage('images/pindao_normal.png'),
          getTabImage('images/pindao_active.png')
        ],
        [
          getTabImage('images/normal.png'),
          getTabImage('images/normal.png')
        ],
        [
          getTabImage('images/huiyuangou_normal.png'),
          getTabImage('images/huiyuangou_active.png')
        ],
        [
          getTabImage('images/my_normal.png'),
          getTabImage('images/my_active.png')
        ]
      ];
    }
  }

  Image getTabIcon(int curIndex) {
    if (curIndex == _tabIndex) {
      return tabImages[curIndex][1];
    }
    return tabImages[curIndex][0];
  }

  Image getBigTabIcon(int curIndex) {
    if (curIndex == _tabIndex) {
      return Image.asset('images/center_active.png', width:80.0, height:80.0);
    }
    return Image.asset(
      'images/center_normal.png', width:50.0, height:50.0);
  }

  Text getTabTitle(int curIndex) {
    return new Text(appBarTitles[curIndex], style: getTabTextStyle(curIndex));
  }

  TextStyle getTabTextStyle(int curIndex) {
    if (curIndex == _tabIndex) {
      return tabTextStyleSelected;
    }
    return tabTextStyleNormal;
  }

  @override
  Widget build(BuildContext context) {

    _body = IndexedStack(
      children: pages,
      index: _tabIndex,
    );

    return Scaffold(
      //Body -------------------------
      body: _body,

      floatingActionButton: Container(
        // color: Colors.black26,
        width: _tabIndex == 2 ? 75 : 50,
        height: _tabIndex == 2 ? 75 : 50,
        margin: EdgeInsets.only(top: _tabIndex == 2 ? 25 : 50),
        child: IconButton(
          icon: getBigTabIcon(2),
          onPressed: () => {onTapAct(2)}
        ),
        
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,

      //Bottom -----------------------
      //Android样式
      // bottomNavigationBar: BottomNavigationBar(
      //   type: BottomNavigationBarType.fixed,   //全部文本&图标都显示, 但是选中时依然会稍微变大一点
      //   // type: BottomNavigationBarType.shifting,  //只显示选中图标的文本,其他的只显示图片, 选中item会变大

      //iOS样式
      bottomNavigationBar: CupertinoTabBar(
        backgroundColor: Colors.white,
        items: [
          BottomNavigationBarItem(
            icon: getTabIcon(0),
            title: getTabTitle(0)
          ),
          BottomNavigationBarItem(
            icon: getTabIcon(1),
            title: getTabTitle(1)
          ),
          BottomNavigationBarItem(
            icon: getTabIcon(2),
            // title: getTabTitle(2)
            title: Text('')
          ),
          BottomNavigationBarItem(
            icon: getTabIcon(3),
            title: getTabTitle(3)
          ),
          BottomNavigationBarItem(
            icon: getTabIcon(4),
            title: getTabTitle(4)
          ),
        ],
        currentIndex: _tabIndex,
        onTap: (index) {
          onTapAct(index);
        },

      ),

    );
  }

  void onTapAct(int index) {
    setState(() {
      _tabIndex = index;
    });
  }
}
