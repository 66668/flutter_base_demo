import 'package:flutter/material.dart';

/**
 * (2)基础组件-Image:
 */
void main() => runApp(new MaterialApp(
      title: "Image示例",
      home: new ImageDemo(),
    ));

/**
 * new Image:通过ImageProvider来加载图片,默认加载/images/egg.png图片，2.0x/3.0x文件下的图片不使用
 *（1）new Image,综合方式
 * （2）Image.asset：本地图片
 * （3）Image.file:本地file
 * (4)Image.nework:加载网络图片
 * （5）Image.memory:加载 Uint8List资源图片
 *
 */
class ImageDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Center(

//        child: new Image(image: new AssetImage('images/egg.png'))
        child: new Image.asset(
      'images/egg.png',
      width: 100,
      height: 100,
      fit: BoxFit.cover,
      repeat: ImageRepeat.repeat,
      gaplessPlayback: false,
    ));
  }
}


