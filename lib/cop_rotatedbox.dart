import 'package:flutter/material.dart';

/**
 * 组件装饰和视觉效果-RotatedBox旋转盒子
 *
 */
void main() => runApp(new MaterialApp(
      title: "RotatedBox旋转盒子",
      home: new OpacityDemo(),
    ));

/**
 *  OpacityDemo
 */
class OpacityDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(title: Text('RotatedBox旋转盒子')),
      body: new Center(
        child: Container(
          child: RotatedBox(
            quarterTurns: 3,
            child: Text('旋转3次的效果'),
          ),
        ),
      ),
    );
  }
}
