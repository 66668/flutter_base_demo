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
                child: Text('绘制嵌套矩形'),
                painter: new MyDrawRRectPainter(),
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
class MyDrawRRectPainter extends CustomPainter {
  //自定义画笔
  Paint _paint = new Paint()
    ..color = Colors.orange //画笔颜色
    ..strokeCap = StrokeCap.round //画笔触摸类型
    ..blendMode = BlendMode.exclusion //颜色混合类型
    ..isAntiAlias = true
    ..style = PaintingStyle.stroke //风格，默认为填充
    ..strokeWidth = 3; //画笔宽度

  @override
  void paint(Canvas canvas, Size size) {
    //中心坐标200，200,变长100
    Rect rect = Rect.fromCircle(center: Offset(200, 200), radius: 100);
    Rect rect2 = Rect.fromCircle(center: Offset(200, 200), radius: 60);
    //设置20的圆角
    RRect rrect = RRect.fromRectAndRadius(rect, Radius.circular(30));
    RRect rrect2 = RRect.fromRectAndRadius(rect2, Radius.circular(20));

    //绘制
    canvas.drawDRRect(rrect, rrect2, _paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return null;
  }
}
