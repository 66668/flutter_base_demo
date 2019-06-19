import 'package:flutter/material.dart';

/**
 * (8)基础组件-Wrap:布局
 * Row和Column各个方向的综合　
 *
 */
void main() => runApp(new WrapDemo());

class WrapDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Wrap+Chip Demo',
      home: new Scaffold(
        appBar: AppBar(
          title: Text('Wrap+Chip Demo'),
        ),
        body: Wrap(
          //组件间空隙
          spacing: 4,
          //行空隙
          runSpacing: 5,
          children: <Widget>[
            Chip(
              label: Text('亚瑟'),
              //添加圆形图
              avatar: CircleAvatar(
                backgroundColor: Colors.pink,
                child: Text(
                  '瑟',
                  style: TextStyle(fontSize: 10),
                ),
              ),
            ),
            Chip(
              label: Text('荆轲'),
              //添加圆形图
              avatar: CircleAvatar(
                backgroundColor: Colors.green,
                child: Text(
                  '珂',
                  style: TextStyle(fontSize: 10),
                ),
              ),
            ),
            Chip(
              label: Text('黄忠'),
              //添加圆形图
              avatar: CircleAvatar(
                backgroundColor: Colors.red,
                child: Text(
                  '黄',
                  style: TextStyle(fontSize: 10),
                ),
              ),
            ),
            Chip(
              label: Text('宫本武藏'),
              //添加圆形图
              avatar: CircleAvatar(
                backgroundColor: Colors.orange,
                child: Text(
                  '宫',
                  style: TextStyle(fontSize: 10),
                ),
              ),
            ),
            Chip(
              label: Text('孙悟空'),
              //添加圆形图
              avatar: CircleAvatar(
                backgroundColor: Colors.yellow,
                child: Text(
                  '孙',
                  style: TextStyle(fontSize: 10),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
