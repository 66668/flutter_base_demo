import 'dart:ui';

import 'package:flutter/material.dart';

/**
 * 动画
 */
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: "动画示例",
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return AnimatedOpacityDemo();
  }
}

/**
 * 动画 渐变
 */
class AnimatedOpacityDemo extends State<MyHomePage> {
  bool _visible = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('动画demo'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          //触发重绘
          setState(
            () {
              _visible = !_visible;
            },
          );
        },
        child: Icon(Icons.filter),
        tooltip: '隐藏，显示',
      ),
      body: Center(
        child: AnimatedOpacity(
          opacity: _visible ? 1.0 : 0.0,
          duration: Duration(milliseconds: 1000),
          child: Container(
            width: 200,
            height: 200,
            color: Colors.green,
          ),
        ),
      ),
    );
  }
}
