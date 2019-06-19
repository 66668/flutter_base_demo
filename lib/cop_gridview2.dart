import 'package:flutter/material.dart';

/**
 * (8)基础组件-GridView:网格列表
 *
 */
void main() => runApp(new GridViewDemo03());

class GridViewDemo03 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'GridView示例',
      home: new Scaffold(
          appBar: AppBar(
            title: Text('GridView示例'),
          ),
          //使用ListView.builder构造列表
          body: GridView.extent(
            maxCrossAxisExtent: 150,
            mainAxisSpacing: 4,
            padding: EdgeInsets.all(4),
            crossAxisSpacing: 4,
            children: _buildGridTileList(30),
          )),
    );
  }

  List<Container> _buildGridTileList(int count) {
    return new List.generate(
        count,
        (int index) => new Container(
              child: new Image.asset("images/egg.png"),
            ));
  }
}
