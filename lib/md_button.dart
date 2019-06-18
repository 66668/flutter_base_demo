import 'package:flutter/material.dart';

/**
 * Material Design 风格:button详解
 * （1）FloatingActionButton
 * （2） FlatButton
 * （2） PopupMenuButton
 */
void main() => runApp(
//    new FloatingActionButtonDemo()
//    new FlatButtonDemo());
    new PopupMenuButtonDemo());

/**
 * FloatingActionButton
 *
 */
class FloatingActionButtonDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'FloatingActionButton示例',
      home: Scaffold(
        appBar: AppBar(
          title: Text('FloatingActionButton示例'),
        ),
        body: Center(
          child: Text('FloatingActionButton示例-文本提示'),
        ),
        //FloatingActionButton示例
        floatingActionButton: new Builder(builder: (BuildContext context) {
          return new FloatingActionButton(
            //添加图标
            child: const Icon(Icons.add),
            //点击
            onPressed: () {
              //给个提示
              Scaffold.of(context)
                  .showSnackBar(new SnackBar(content: new Text('弹窗提示')));
            },
            //提示
            tooltip: '正在点击FloatingActionButton',
            //背景
            foregroundColor: Colors.orange,
            backgroundColor: Colors.deepOrange,
            //未点击阴影
            elevation: 7.0,
            //点击阴影
            highlightElevation: 14.0,
            //设置圆形
            shape: CircleBorder(),
            //
            isExtended: false,
            mini: false,
          );
        }),
        //显示位置
        floatingActionButtonLocation: FloatingActionButtonLocation.endTop,
      ),
    );
  }
}

/**
 * FlatButton
 */
class FlatButtonDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'FlatButton示例',
      home: Scaffold(
        appBar: AppBar(
          title: Text('FlatButton示例'),
        ),
        body: Center(
          child: FlatButton(onPressed: () {}, child: Text('FlatButton点击')),
        ),
      ),
    );
  }
}

/**
 * PopupMenuButton
 */

class PopupMenuButtonDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'PopupMenuButton示例',
      home: Scaffold(
        appBar: AppBar(
          title: Text('PopupMenuButton示例'),

          //PopupMenuButton示例
          actions: <Widget>[
            new PopupMenuButton(
              itemBuilder: (BuildContext context) {
                return <PopupMenuItem<String>>[
                  const PopupMenuItem<String>(
                    child: Text("分享"),
                    value: "share",
                  ),
                  const PopupMenuItem<String>(
                    child: Text("更多"),
                    value: "more",
                  ),
                  const PopupMenuItem<String>(
                    child: Text("功能1"),
                    value: "more",
                  ),
                  const PopupMenuItem<String>(
                    child: Text("功能2"),
                    value: "more",
                  ),
                ];
              },
              onSelected: (String action) {
                switch (action) {
                  case "share":
                    print("分享 QQ、微信");
                    break;
                  case "more":
                    print("更多");
                    break;
                }
              },
            ),
          ],
        ),
        body: Center(
          child: Text('PopupMenuButton'),
        ),
      ),
    );
  }
}
