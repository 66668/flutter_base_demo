import 'package:flutter/material.dart';

/**
 * Material Design 风格的路由跳转
 *
 */
void main() => runApp(MyMDDemo());

/**
 *
 */
class MyMDDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      theme: new ThemeData(
          //主题色
          primarySwatch: Colors.orange),
      title: '路由跳转示例',
      home: MyHomePage(),
      //设置路由
      routes: {
        '/first': (BuildContext context) => FirstPage(),
        '/second': (BuildContext context) => SecondPage(),
      },
      //初始化 默认路由位置
      initialRoute: '/MyHomePage',
    );
  }
}

/**
 * 状态可变的主界面
 */
class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() {
    return new _MyHomePageState();
  }
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        title: Text('路由示例'),
      ),
      body: Center(
        child: RaisedButton(
          onPressed: () {
            //设置路由跳转到第2个界面
            Navigator.pushNamed(context, '/first');
          },
          child: Text(
            '主界面按钮',
            style: TextStyle(fontSize: 18, color: Colors.black),
          ),
        ),
      ),
    );
  }
}

/**
 * 第一个界面
 */
class FirstPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        title: Text('第一个界面'),
      ),
      body: Center(
        child: RaisedButton(
          onPressed: () {
            //设置路由跳转到第2个界面
            Navigator.pushNamed(context, '/second');
          },
          child: Text(
            '第一个界面按钮',
            style: TextStyle(fontSize: 30, color: Colors.red),
          ),
        ),
      ),
    );
  }
}

/**
 * 第二个界面
 */
class SecondPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        title: Text('第二个界面'),
      ),
      body: Center(
        child: RaisedButton(
          onPressed: () {
            //设置路由跳转到第2个界面
            Navigator.pushNamed(context, '/first');
          },
          child: Text(
            '第2个界面按钮',
            style: TextStyle(fontSize: 20, color: Colors.orange),
          ),
        ),
      ),
    );
  }
}
