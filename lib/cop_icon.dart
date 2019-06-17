import 'package:flutter/material.dart';

/**
 * (4)基础组件-Icon:
 * 1.icon 不可交互的固定图标
 * 2.IconButton
 * 3.ImageIcon
 *
 */
void main() => runApp(new MaterialApp(
      title: "Icon示例",
      //IconDemo/IconButtonDemo/ImageIconDemo
      home: new IconButtonDemo(),
    ));

/**
 *icon示例
 */
class IconDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Icon(Icons.phone_android, color: Colors.lightGreen[400], size: 200);
  }
}

/**
 *IconButton示例
 */
class IconButtonDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        title: Text('icon示例'),
        centerTitle: true,
        backgroundColor: Colors.grey,
        //appbar添加按钮:
        leading: Offstage(
          offstage: false,
          child:
              IconButton(icon: const Icon(Icons.arrow_back), onPressed: () {}),
        ),
        actions: <Widget>[
          new IconButton(
              icon: const Icon(Icons.arrow_forward),
              tooltip: 'next choice',
              onPressed: () {}),
          new Center(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "Cancel",
              ),
            ),
          )
        ],
      ),
      body: IconButton(
        alignment: Alignment.center,//对齐方式
        icon: const Icon(Icons.call),
        iconSize: 100,
        color: Colors.red,
        disabledColor: Colors.grey,
        tooltip: '点击时组件提示语',
        onPressed: () {
          print('iconButton点击事件');
        },
      ),
    );
  }
}

/**
 *  ImageIcon
 */
class ImageIconDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ImageIcon(
      AssetImage('images/egg.png'),
      color: Colors.yellow,
      size: 500
    );
  }
}
