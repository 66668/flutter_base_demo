import 'package:flutter/material.dart';

/**
 *
 * Material Design 风格:Card
 *
 */
void main() => runApp(new CardDemo());

class CardDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'card',
      home: new Scaffold(
        appBar: AppBar(
          title: Text('Card'),
        ),
        body: Center(
          child: _card,
        ),
      ),
    );
  }

  var _card = new SizedBox(
    height: 300,
    //card示例
    child: Card(
      child: Column(
        children: <Widget>[
          //添加item widget
          new ListTile(
            title: Text(
              '望京科技园A',
              style: TextStyle(fontWeight: FontWeight.w300),
            ),
            subtitle: Text('xx科技有限公司1'),
            leading: Icon(Icons.home),
          ),
          new Divider(),
          new ListTile(
            title: Text(
              '望京科技园B',
              style: TextStyle(fontWeight: FontWeight.w300),
            ),
            subtitle: Text('xx科技有限公司2'),
            leading: Icon(Icons.home),
          ),
          new Divider(),
          new ListTile(
            title: Text(
              '望京科技园C',
              style: TextStyle(fontWeight: FontWeight.w300),
            ),
            subtitle: Text('xx科技有限公司3'),
            leading: Icon(Icons.home),
          ),
          new Divider(),
          //TODO 绘制超出布局
          new ListTile(
            title: Text(
              '望京科技园D',
              style: TextStyle(fontWeight: FontWeight.w300),
            ),
            subtitle: Text('xx科技有限公司4'),
            leading: Icon(Icons.home),
          ),
          new Divider(),
          new ListTile(
            title: Text(
              '望京科技园E',
              style: TextStyle(fontWeight: FontWeight.w300),
            ),
            subtitle: Text('xx科技有限公司5'),
            leading: Icon(Icons.home),
          ),
          new Divider(),
        ],
      ),
    ),
  );
}
