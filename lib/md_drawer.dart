import 'package:flutter/material.dart';

/**
 * Material Design 风格:抽屉视图
 */
void main() => runApp(new DrawerDemo());

class DrawerDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: '抽屉示例',
      home: new Scaffold(
        appBar: AppBar(
          title: Text('抽屉示例'),
        ),
        //添加抽屉布局
        drawer: Drawer(
          child: ListView(
            children: <Widget>[
              //header显示
              UserAccountsDrawerHeader(
                //用户名
                accountName: new Text('宋均洋'),
                //email
                accountEmail: new Text('sjy0118atsn@163.com'),
                //头像
                currentAccountPicture: new CircleAvatar(
                  backgroundImage: AssetImage('images/egg.png'),
                ),
                //点击事件
                onDetailsPressed: () {},
                //其他账号头像
                otherAccountsPictures: <Widget>[
                  new Container(
                    child: Image.asset('images/egg.png'),
                  ),
                  new Container(
                    child: Image.asset('images/egg.png'),
                  )
                ],
                //背景色，详见cop_container
                decoration: BoxDecoration(color: Colors.black),
              ),
              //其他模块
              ListTile(
                leading: new CircleAvatar(
                  child: Icon(Icons.directions_boat),
                ),
                title: Text('功能1'),
              ),
              ListTile(
                leading: new CircleAvatar(
                  child: Icon(Icons.directions_car),
                ),
                title: Text('功能2'),
              ),
              ListTile(
                leading: new CircleAvatar(
                  child: Icon(Icons.directions_run),
                ),
                title: Text('功能3'),
              ),
              ListTile(
                leading: new CircleAvatar(
                  child: Icon(Icons.directions_railway),
                ),
                title: Text('功能4'),
              ),
              ListTile(
                leading: new CircleAvatar(
                  child: Icon(Icons.directions_walk),
                ),
                title: Text('功能5'),
              ),
              ListTile(
                leading: new CircleAvatar(
                  child: Icon(Icons.directions_bike),
                ),
                title: Text('功能6'),
              ),
            ],
            //
          ),
        ),
      ),
    );
  }
}
