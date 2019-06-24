import 'package:flutter/material.dart';

/**
 * 组件装饰和视觉效果-透明度处理
 *
 */
void main() => runApp(new MaterialApp(
      title: "透明度示例",
      home: new OpacityDemo(),
    ));

/**
 *  OpacityDemo
 */
class OpacityDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(title: Text('透明度示例')),
      body: new Center(
        child: new Opacity(
          opacity: 0.3,
          child: Container(
            width: 200,
            height: 200,
            decoration: BoxDecoration(color: Colors.green),
            child: Text(
              '不透明度0.3',
              style: TextStyle(fontSize: 28),
            ),
          ),
        ),
      ),
    );
  }
}
