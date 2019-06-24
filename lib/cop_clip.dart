import 'package:flutter/material.dart';

/**
 * 组件装饰和视觉效果-Clip 裁剪
 *
 */
void main() => runApp(new MaterialApp(
      title: "Clip 裁剪示例",
      //四种样式，切换测试
      home: new ClipPathDemo(),
    ));

/**
 *  ClipDemo （1）裁剪圆形
 */
class ClipOvalDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(title: Text('Clip 裁剪')),
      body: new Center(
        child: Container(
          decoration: BoxDecoration(color: Colors.red),
          child: ClipOval(
              child: Container(
            decoration: BoxDecoration(color: Colors.green),
            child: SizedBox(
              width: 300,
              height: 300,
              child: Image.asset(
                'images/egg.png',
                fit: BoxFit.fill,
              ),
            ),
          )),
        ),
      ),
    );
  }
}

/**
 *  ClipDemo （2）裁剪矩形
 */
class ClipRRectDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(title: Text('Clip 裁剪')),
      body: new Center(
        child: Container(
          decoration: BoxDecoration(color: Colors.red),
          child: new ClipRRect(
            borderRadius: BorderRadius.circular(40),
            child: Container(
              decoration: BoxDecoration(color: Colors.green),
              child: SizedBox(
                width: 300,
                height: 300,
                child: Image.asset(
                  'images/egg.png',
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

/**
 *  ClipDemo （2）裁剪矩形,需要自定义Clipper
 */
class ClipRectDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(title: Text('Clip 裁剪')),
      body: new Center(
        child: Container(
          decoration: BoxDecoration(color: Colors.red),
          child: new ClipRect(
            clipper: MyRectClipper(), //自定义剪裁
            child: SizedBox(
              width: 300,
              height: 300,
              child: Image.asset(
                'images/egg.png',
                fit: BoxFit.fill,
              ),
            ),
          ),
        ),
      ),
    );
  }
}

/**
 * 自定义剪裁
 */
class MyRectClipper extends CustomClipper<Rect> {
  @override
  Rect getClip(Size size) {
    return new Rect.fromLTRB(100, 100, size.width - 100, size.height - 100);
  }

  @override
  bool shouldReclip(CustomClipper<Rect> oldClipper) {
    return true;
  }
}

/**
 *  ClipDemo （4）裁剪路径,需要自定义Clipper
 */
class ClipPathDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(title: Text('Clip 裁剪')),
      body: new Center(
        child: Container(
//          decoration: BoxDecoration(color: Colors.green),
          child: new ClipPath(
            clipper: MyPathClipper(), //自定义剪裁
            child: SizedBox(
              width: 300,
              height: 300,
              child: Image.asset(
                'images/egg.png',
                fit: BoxFit.fill,
              ),
            ),
          ),
        ),
      ),
    );
  }
}

/**
 * 自定义剪裁
 */
class MyPathClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path p = new Path();
    p.moveTo(40, 40); //起始点
    p.lineTo(100, 10); //
    p.lineTo(200, 100);
    p.close();

    return p;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return true;
  }
}
