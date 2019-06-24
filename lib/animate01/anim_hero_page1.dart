import 'dart:ui';

import 'package:flutter/material.dart';

/**
 * 动画,实现界面跳转动画
 */
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: "动画示例",
      home: FirstPage(),
    );
  }
}

class FirstPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('动画跳转-界面1'),
      ),
      body: Container(
        width: 500,
        height: 500,
        color: Colors.orange,
        child: GestureDetector(
          child: Hero(tag: '图片', child: Image.asset('images/animal1.png')),
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (_) {
              return SecondPage();
            }));
          },
        ),
      ),
    );
  }
}

class SecondPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('动画跳转-界面1'),
      ),
      body: Container(
        width: 500,
        height: 500,
        color: Colors.green,
        child: GestureDetector(
          child: Hero(tag: '图片', child: Image.asset('images/egg.png')),
          onTap: () {
            Navigator.pop(context);
          },
        ),
      ),
    );
  }
}
