import 'package:flutter/material.dart';

/**
 * (1)基础组件-Container:添加个边框，边框内添加个text文本
 */
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: "容器组件示例",
      home: Scaffold(
        appBar: AppBar(
          title: Text('容器组件示例-AppBar'),
        ),
        body: Center(
          //添加容器
          child: Container(
            //宽
            width: 200,

            //高
            height: 300,

            //内距离，fromLTRB差异边距
            padding: EdgeInsets.all(10),
            //Container与外部组件的距离
            margin: EdgeInsets.all(20),

            //子控件对齐方式
            alignment: Alignment.center,

            //边框设置,使用该参数后，不可以使用color参数
            decoration: BoxDecoration(
                //边框背景
                //Color(0x330000FF)
                color: Colors.yellow,
                border: Border.all(
                    color: Colors.red, width: 2, style: BorderStyle.solid),
                borderRadius: BorderRadius.all(Radius.circular(10)),
                boxShadow: [
                  BoxShadow(color: Colors.blue, offset: Offset(5, 5))
                ],
                //渐变
                gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [Colors.blue, Colors.yellow, Colors.red],
                    tileMode: TileMode.repeated),
                backgroundBlendMode: BlendMode.srcATop,
                shape: BoxShape.rectangle),
            foregroundDecoration: FlutterLogoDecoration(),
            //图标背景
//            transform: Matrix4.rotationX(10),//3d操作

            //添加文本
            child: Text(
              '容器内的Text文本',
              textDirection: TextDirection.rtl,
              style: TextStyle(
                color: Colors.red,
                fontSize: 12,
              ),
              textAlign: TextAlign.center,
            ),
          ),
        ),
      ),
    );
  }
}
