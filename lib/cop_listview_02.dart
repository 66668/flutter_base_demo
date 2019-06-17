import 'package:flutter/material.dart';

/**
 * (7)基础组件-ListView:长列表
 *
 */
void main() => runApp(new ListViewDemo03(
      //generate方法生成假数据
      items: List<String>.generate(100, (i) => "item数据 $i"),
    ));

/**
 * ListView:itemBuilder构造器（大数据列表）
 */
class ListViewDemo03 extends StatelessWidget {
  final List<String> items;

  ListViewDemo03({Key key, @required this.items}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: '长列表示例',
      home: new Scaffold(
        appBar: AppBar(
          title: Text('长列表示例'),
        ),
        //使用ListView.builder构造列表
        body: ListView.builder(
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
