import 'package:flutter/material.dart';

/**
 * (6)基础组件-Button:
 * 1.IconButton(cop_icon中已介绍)
 * 2.RaisedButton：凸起按钮组件
 *
 */
void main() => runApp(new MaterialApp(
      title: "RaisedButton示例",
      home: new RaisedButtonDemo(),
    ));

/**
 *  ImageIcon
 */
class RaisedButtonDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(title: Text('RaisedButton示例')),
      body: new RaisedButton(
        onPressed: () {},
        child: Text('RaisedButton的文本提示'),
      ),
    );
  }
}
