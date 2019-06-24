import 'package:flutter/material.dart';

/**
 * 组件装饰和视觉效果-boxdecoration
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
      appBar: AppBar(title: Text('BoxDecoration示例')),
      body: new Center(
        child: Container(
          width: 300,
          height: 300,
          decoration: BoxDecoration(
            //背景色
            color: Colors.yellow,
            //背景图
            image: DecorationImage(
                image: ExactAssetImage('images/egg.png'), fit: BoxFit.fill),
            //边框
            border: Border.all(color: Colors.grey, width: 5),
            //圆角
            borderRadius: BorderRadius.circular(10),
            //边框阴影效果
            boxShadow: <BoxShadow>[
              new BoxShadow(
                  color: Colors.green,
                  //模糊值
                  blurRadius: 8.0,
                  //扩展阴影半径
                  spreadRadius: 10,
                  //偏移
                  offset: Offset(10, 10))
            ],
            //渐变
            gradient: new RadialGradient(
              center: AlignmentDirectional.center,
              colors: <Color>[
                Colors.red,
                Colors.green,
                Colors.pink,
                Colors.orange
              ],
            ),
          ),
          child: Text(
            'BoxDecoration',
            style: TextStyle(fontSize: 28),
          ),
        ),
      ),
    );
  }
}
