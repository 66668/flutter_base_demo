import 'package:flutter/material.dart';

/**
 * Material Design 风格:Scaffold(脚手架组件)
 * （1）详解AppBar
 * (2)详解bottomNavigationBar
 *
 */
void main() => runApp(MyMDDemo());

/**
 *
 */
class MyMDDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
        theme: new ThemeData(
            //主题色
            primarySwatch: Colors.orange),
        title: 'Scaffold示例',
        home: ScaffoldDemo());
  }
}

/**
 * 状态可变的主界面
 */
class ScaffoldDemo extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _ScaffoldDemo();
  }
}

class _ScaffoldDemo extends State<ScaffoldDemo> {
  //bottomNavigationBar相关
  int _bottomSelectIndex = 1;
  final _bottomOptions = [
    Text('Index 0:微信'),
    Text('Index 1:通讯录'),
    Text('Index 2:发现'),
    Text('Index :我')
  ];

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      //01 appBar:可设置back按钮，标题，菜单按钮
      appBar: AppBar(
        leading: Icon(Icons.arrow_back), //
        title: Text('Scaffold示例'),
        //大于三个使用PopupMenuButton
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {},
            tooltip: '搜索',
          ),
          IconButton(
            icon: Icon(Icons.add),
            onPressed: () {},
            tooltip: '添加',
          )
        ],
      ),
      //02 body:视图内容
      body: Center(
        child: _bottomOptions.elementAt(_bottomSelectIndex),
      ),
      //03 bottomNavigationBar:底部导航栏(仿微信)
      bottomNavigationBar: new BottomNavigationBar(
        //添加 导航内容
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.chat), title: Text('微信')),
          BottomNavigationBarItem(
              icon: Icon(Icons.contacts), title: Text('通讯录')),
          BottomNavigationBarItem(
              icon: Icon(Icons.find_in_page), title: Text('发现')),
          BottomNavigationBarItem(icon: Icon(Icons.menu), title: Text('我')),
        ],
        //设置当前选中
        currentIndex: _bottomSelectIndex,
        //选中项颜色
        fixedColor: Colors.green,
        //切换设置
        onTap: _onItemTapped,
      ),

      //04 fab按钮
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        tooltip: '增加',
        child: Icon(Icons.add),
      ),
      //fab设置位置
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      //05
      backgroundColor: Colors.white,
    );
  }

  void _onItemTapped(int index) {
    setState(() {
      _bottomSelectIndex = index;
    });
  }
}
