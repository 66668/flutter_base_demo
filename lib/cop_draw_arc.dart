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
                child: Text('绘制圆弧'),
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
    ..color = Colors.orange //画笔颜色
    ..strokeCap = StrokeCap.round //画笔触摸类型
    ..blendMode = BlendMode.exclusion //颜色混合类型
    ..isAntiAlias = true
    ..style = PaintingStyle.stroke //风格，默认为填充
    ..strokeWidth = 30; //画笔宽度

  @override
  void paint(Canvas canvas, Size size) {
    const PI = 3.1415926;
    Rect rect1 = Rect.fromCircle(center: Offset(100, 0), radius: 50);
    canvas.drawArc(rect1, 0, PI / 2, true, _paint);

    Rect rect2 = Rect.fromCircle(center: Offset(400, 300), radius: 100);
    canvas.drawArc(rect2, 0, PI, true, _paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return null;
  }
}
