import 'package:flutter/material.dart';

/**
 * Material Design 风格:Tab+TabBar+TabBarView,及控制器DefaultTabController
 *
 */
void main() => runApp(new DefaultTabControllerDemo());

/**
 */
class DefaultTabControllerDemo extends StatelessWidget {
  List<Tab> tabs = <Tab>[
    Tab(
      text: '选项卡1',
    ),
    Tab(
      text: '选项卡2',
    ),
    Tab(
      text: '选项卡3',
    )
  ];

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'tab示例',
      home: new DefaultTabController(
          length: tabs.length,
          child: Scaffold(
            appBar: AppBar(
              //添加导航tab
              bottom: TabBar(
                //关联数据
                tabs: tabs,
              ),
            ),
            //关联布局
            body: TabBarView(
                children: tabs.map((Tab tab) {
              return Center(child: Text(tab.text));
            }).toList()),
          )),
    );
  }
}

