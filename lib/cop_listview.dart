import 'package:flutter/material.dart';

/**
 * (7)基础组件-ListView:
 *
 */
void main() => runApp(new MaterialApp(
      title: "ListView示例",
//      home: new ListViewDemo01(),
//      home: new ListViewDemo02(),
    ));

/**
 * ListView示例:静态数据
 */
class ListViewDemo01 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: AppBar(title: Text('ListView示例')),
        //ListView示例
        body: new ListView(
          children: <Widget>[
            ListTile(leading: Icon(Icons.alarm), title: Text('这是文本1')),
            ListTile(leading: Icon(Icons.call), title: Text('这是文本2')),
            ListTile(leading: Icon(Icons.phone), title: Text('这是文本3')),
            ListTile(leading: Icon(Icons.place), title: Text('这是文本4')),
            ListTile(leading: Icon(Icons.pages), title: Text('这是文本5')),
            ListTile(leading: Icon(Icons.people), title: Text('这是文本6')),
            ListTile(leading: Icon(Icons.scanner), title: Text('这是文本7')),
            ListTile(leading: Icon(Icons.more), title: Text('这是文本8')),
            ListTile(leading: Icon(Icons.label), title: Text('这是文本9')),
          ],
        ));
  }
}

/**
 * 列表方向设置+列表嵌套布局
 */
class ListViewDemo02 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: AppBar(title: Text('ListView示例')),
        //ListView示例
        body: Container(
          margin: EdgeInsets.symmetric(vertical: 20),
          height: 200,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: <Widget>[
              Container(
                width: 100,
                color: Colors.grey,
              ),
              Container(
                width: 100,
                color: Colors.amber,
              ),
              Container(
                width: 100,
                color: Colors.green,
                child: ListView(
                  //Column
                  children: <Widget>[
                    Text("列表嵌套列表01"),
                    Icon(Icons.list),
                    Text("列表嵌套列表02"),
                    Icon(Icons.list),
                    Text("列表嵌套列表03"),
                    Icon(Icons.list),
                    Text("列表嵌套列表04"),
                    Icon(Icons.list),
                    Text("列表嵌套列表05"),
                    Icon(Icons.list),
                    Text("列表嵌套列表06"),
                    Icon(Icons.list),
                    Text("列表嵌套列表07"),
                    Icon(Icons.list)
                  ],
                ),
              ),
              Container(
                width: 100,
                color: Colors.grey,
              ),
              Container(
                width: 100,
                color: Colors.amber,
              ),
              Container(
                width: 100,
                color: Colors.yellow,
              ),
              Container(
                width: 100,
                color: Colors.red,
              ),
              Container(
                width: 100,
                color: Colors.grey,
              ),
              Container(
                width: 100,
                color: Colors.amber,
              ),
              Container(
                width: 100,
                color: Colors.yellow,
              ),
              Container(
                width: 100,
                color: Colors.red,
              )
            ],
          ),
        ));
  }
}

/**
 * ListView:itemBuilder构造器（大数据列表）
 */
class ListViewDemo03 extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: AppBar(title: Text('ListView示例')),
        //ListView示例
        body: new ListView(
          children: <Widget>[
            ListTile(leading: Icon(Icons.alarm), title: Text('这是文本1')),
            ListTile(leading: Icon(Icons.call), title: Text('这是文本2')),
            ListTile(leading: Icon(Icons.phone), title: Text('这是文本3')),
            ListTile(leading: Icon(Icons.place), title: Text('这是文本4')),
            ListTile(leading: Icon(Icons.pages), title: Text('这是文本5')),
            ListTile(leading: Icon(Icons.people), title: Text('这是文本6')),
            ListTile(leading: Icon(Icons.scanner), title: Text('这是文本7')),
            ListTile(leading: Icon(Icons.more), title: Text('这是文本8')),
            ListTile(leading: Icon(Icons.label), title: Text('这是文本9')),
          ],
        ));
  }
}
