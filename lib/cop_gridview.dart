import 'package:flutter/material.dart';

/**
 * (8)基础组件-GridView:网格列表
 *
 */
void main() => runApp(new GridViewDemo02(
      //generate方法生成假数据
      items: List<String>.generate(100, (i) => "item数据 $i"),
    ));

/**
 * GridView:静态数据
 */
class GridViewDemo01 extends StatelessWidget {
  final List<String> items;

  GridViewDemo01({Key key, @required this.items}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
        title: 'GridView示例',
        home: new Scaffold(
            appBar: AppBar(
              title: Text('GridView示例'),
            ),
            body: new GridView.count(
              primary: false,
              //父节点滚动视图相关
              padding: EdgeInsets.all(10.0),
              crossAxisCount: 2,
              crossAxisSpacing: 5,
              children: <Widget>[
                //子控件可以为任意控件eg:Text
                ListTile(leading: Icon(Icons.alarm), title: Text('这是文本1')),
                ListTile(leading: Icon(Icons.call), title: Text('这是文本2')),
                ListTile(leading: Icon(Icons.phone), title: Text('这是文本3')),
                ListTile(leading: Icon(Icons.place), title: Text('这是文本4')),
                ListTile(leading: Icon(Icons.pages), title: Text('这是文本5')),
                ListTile(leading: Icon(Icons.people), title: Text('这是文本6')),
                ListTile(leading: Icon(Icons.scanner), title: Text('这是文本7')),
                ListTile(leading: Icon(Icons.more), title: Text('这是文本8')),
                ListTile(leading: Icon(Icons.label), title: Text('这是文本9')),
                ListTile(leading: Icon(Icons.label), title: Text('这是文本10')),
                ListTile(leading: Icon(Icons.label), title: Text('这是文本11')),
                ListTile(leading: Icon(Icons.label), title: Text('这是文本12')),
                ListTile(leading: Icon(Icons.label), title: Text('这是文本13')),
              ],
            )));
  }
}

/**
 * ListView:itemBuilder构造器（大数据列表）
 */
class GridViewDemo02 extends StatelessWidget {
  final List<String> items;

  GridViewDemo02({Key key, @required this.items}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'GridView示例',
      home: new Scaffold(
        appBar: AppBar(
          title: Text('GridView示例'),
        ),
        //使用ListView.builder构造列表
        body: GridView.builder(
          padding: EdgeInsets.all(10.0),
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3, mainAxisSpacing: 5, crossAxisSpacing: 5),
          //列表长度
          itemCount: items.length,
          //构造器
          itemBuilder: (context, index) {
            return new ListTile(
              leading: Icon(Icons.people),
              title: Text('${items[index]}'),
            );
          },
        ),
      ),
    );
  }
}
