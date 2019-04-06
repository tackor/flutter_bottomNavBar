import 'package:flutter/material.dart';
import 'package:ottom_tabbar_demo/utils/ThemeUtil.dart';


class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Color themeColor = ThemeUtil.currentColorTheme;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        backgroundColor: themeColor,  //导航栏颜色
        brightness: Brightness.light,  //状态栏样式
        elevation: 0,   //去除阴影

        //导航栏_左侧按钮
        leading: Builder(
          builder: (BuildContext context) {
            return IconButton(
              padding: EdgeInsets.only(left: 14.0),
              icon: ClipOval(
                child: Image.network('https://upload.jianshu.io/users/upload_avatars/1476913/37ca4d8d-3f30-4e26-9ca3-85362ae338e2.png?imageMogr2/auto-orient/strip|imageView2/1/w/240/h/240', width: 38.0, height: 38.0,),
              ),
              onPressed: () {
                // Scaffold.of(context).openDrawer();  //打开Drawer
                Navigator.of(context).push(new MaterialPageRoute(builder: (ctx) {  //跳转到某一页
                  // return new PersonalPage();
                }));
              },
            );
          },
        ), 

        title: Text('首页', style: TextStyle(color: Colors.white, fontSize: 24)),

      ),
      body: Container(
        color: Colors.red,
        child: Center(
          child: Text(
            '首页',
            style: TextStyle(fontSize: 48, color: Colors.white),
            ),
          ),
      )
    );
  }
}
