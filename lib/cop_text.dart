import 'package:flutter/material.dart';

/**
 * (3)基础组件-Text:
 */
void main() => runApp(new MaterialApp(
      title: "文本示例",
      home: new TextDemo(),
    ));

/**
 *
 */
class TextDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        title: Text('文本组件'),
      ),
      body: new Column(
        children: <Widget>[
          //text样式1
          new Text(
            '红色+黑色删除线+25字',
            style: TextStyle(
                color: Colors.red,
                decoration: TextDecoration.lineThrough,
                decorationColor: Colors.black,
                fontSize: 25),
          ),
          new Text(
            '橙色，22字体，倾斜，下划线',
            style: TextStyle(
                color: Color(0xffff9900),
                fontSize: 22,
                decoration: TextDecoration.underline,
                fontStyle: FontStyle.italic),
          ),
          new Text(
            '30,加粗',
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),
          )
        ],
      ),
    );
  }
}
