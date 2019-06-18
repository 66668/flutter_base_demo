import 'package:flutter/material.dart';

/**
 *复杂视图
 *
 * Material Design 风格:Tab+TabBar+TabBarView,及控制器DefaultTabController
 *
 */
void main() => runApp(new TabBarSampl());

//选项卡数据类
class ItemBarView {
  const ItemBarView({this.title, this.icon});

  final String title; //标题
  final IconData icon; //图标

}

//数据
const List<ItemBarView> items = const <ItemBarView>[
  const ItemBarView(title: '自驾', icon: Icons.directions_car),
  const ItemBarView(title: '自行车', icon: Icons.directions_bike),
  const ItemBarView(title: '轮船', icon: Icons.directions_boat),
  const ItemBarView(title: '公交车', icon: Icons.directions_bus),
  const ItemBarView(title: '火车', icon: Icons.directions_railway),
  const ItemBarView(title: '步行', icon: Icons.directions_walk),
  const ItemBarView(title: '跑', icon: Icons.directions_run),
];

class TabBarSampl extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      home: new DefaultTabController(
        length: items.length,
        child: new Scaffold(
          appBar: AppBar(
            title: Text('TabBar示例'),
            //添加选项卡
            bottom: new TabBar(
              //是否可以滑动
              isScrollable: true,
              //迭代展示tab内容
              tabs: items.map((ItemBarView item) {
                return new Tab(
                  text: item.title,
                  icon: Icon(item.icon),
                );
              }).toList(),
            ),
          ),
          //添加选项卡视图
          body: TabBarView(
            //迭代显示视图
            children: items.map((ItemBarView item) {
              return new Padding(
                padding: const EdgeInsets.all(20),
                child: new SelectItemView(item: item),
              );
            }).toList(),
          ),
        ),
      ),
    );
  }
}

//被选中的内容视图
class SelectItemView extends StatelessWidget {
  //视图数据
  final ItemBarView item;

  SelectItemView({Key key, this.item}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final TextStyle myStyle = Theme.of(context).textTheme.display1;
    return new Card(
      color: Colors.white,
      child: new Center(
        child: Column(
          mainAxisSize: MainAxisSize.min, //垂直方向最小化
          crossAxisAlignment: CrossAxisAlignment.center, //居中
          children: <Widget>[
            new Icon(
              item.icon,
              size: 200,
              color: myStyle.color,
            ),
            new Text(
              item.title,
              style: myStyle,
            )
          ],
        ),
      ),
    );
  }
}
