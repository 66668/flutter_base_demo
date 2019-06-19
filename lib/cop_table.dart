import 'package:flutter/material.dart';

/**
 * (8)基础组件-Table:表格　
 *
 */
void main() => runApp(new TableDemo());

class TableDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Table示例',
      home: new Center(
        //TODO 界面好丑
        child: Table(
          //设置行列
          columnWidths: const <int, TableColumnWidth>{
            0: FixedColumnWidth(60),
            1: FixedColumnWidth(40),
            2: FixedColumnWidth(40),
            3: FixedColumnWidth(40),
            4: FixedColumnWidth(40),
          },
          //表格边框样式
          border: TableBorder.all(color: Colors.black12, width: 2),
          //补充数据
          children: const <TableRow>[
            TableRow(children: <Widget>[
              Text('姓名'),
              Text('性别'),
              Text('班级'),
              Text('年龄'),
            ]),
            TableRow(children: <Widget>[
              Text('张三'),
              Text('男'),
              Text('3.2'),
              Text('12'),
            ]),
            TableRow(children: <Widget>[
              Text('栗子'),
              Text('女'),
              Text('3。4'),
              Text('12'),
            ]),
            TableRow(children: <Widget>[
              Text('栗子'),
              Text('女'),
              Text('3。4'),
              Text('12'),
            ]),
          ],
        ),
      ),
    );
  }
}
