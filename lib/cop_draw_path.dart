import 'dart:ui';

import 'package:flutter/material.dart';

/**
 * (4)自定义画板：绘制
 */
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: "画板示例",
      home: Scaffold(
        appBar: AppBar(
          title: Text('画板示例-绘制'),
        ),
        body: Center(
          //添加容器
          child: Container(
            child: SizedBox(
              width: 500,
              height: 500,
              child: CustomPaint(
                child: Text('绘制路径'),
                painter: new MyDrawPointsPainter(),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

/**
 * 自定义绘制
 */
class MyDrawPointsPainter extends CustomPainter {
  //自定义画笔
  Paint _paint = new Paint()
    ..color = Colors.grey //画笔颜色
    ..isAntiAlias = true
    ..style = PaintingStyle.fill //风格，默认为填充
    ..strokeWidth = 2; //画笔宽度

  @override
  void paint(Canvas canvas, Size size) {
    Path p = new Path()..moveTo(100, 100)..lineTo(200, 300);
    canvas.drawPath(p, _paint);

  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return null;
  }
}
