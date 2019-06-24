import 'package:flutter/material.dart';

/**
 * (1)自定义画板：绘制直线
 */
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: "画板示例",
      home: Scaffold(
        appBar: AppBar(
          title: Text('画板示例-绘制直线'),
        ),
        body: Center(
          //添加容器
          child: Container(
            child: SizedBox(
              width: 500,
              height: 500,
              child: CustomPaint(
                child: Text('绘制直线'),
                painter: new MyDrawLinePainter(),
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
class MyDrawLinePainter extends CustomPainter {
  //自定义画笔
  Paint _paint = new Paint()
    ..color = Colors.orange //画笔颜色
    ..strokeCap = StrokeCap.round //画笔触摸类型
    ..blendMode = BlendMode.exclusion //颜色混合类型
    ..style = PaintingStyle.fill //风格，默认为填充
    ..colorFilter = ColorFilter.mode(Colors.green, BlendMode.exclusion) //渲染模式
    ..maskFilter = MaskFilter.blur(BlurStyle.inner, 3.0) //模糊遮罩效果
    ..filterQuality = FilterQuality.high //渲染质量
    ..strokeWidth = 12; //画笔宽度

  @override
  void paint(Canvas canvas, Size size) {
    //绘制
    canvas.drawLine(Offset(50, 50), Offset(300, 300), _paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return null;
  }
}
