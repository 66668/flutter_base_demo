import 'package:flutter/material.dart';

/**
 * 手势 实现listView滑动删除item
 * 仍有问题，删除后数据错乱并且滑动后，数据又补充回来了
 */
void main() => runApp(
    //
    new GestureDetectorDemo1()
//    new GestureDetectorDemo2()
    );

/**
 * 方案1 setState有效解决数据错乱问题
 */
class GestureDetectorDemo1 extends StatefulWidget {
  @override
  DismissibleDemo createState() {
    return DismissibleDemo();
  }
}

class DismissibleDemo extends State<GestureDetectorDemo1> {
  List<String> items = List<String>.generate(30, (i) => "列表项-${i}");

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
        title: '手势',
        home: new Scaffold(
          appBar: AppBar(
            title: Text('手势Demo'),
          ),
          body: ListView.builder(
              itemCount: items.length,
              itemBuilder: (context, index) {
                final item = items[index];
                return Dismissible(
                    key: Key(item),
                    onDismissed: (direction) {
                      //移除指定索引
                      items.removeAt(index);
                      //更新状态
                      setState(() {});
                      //弹窗
                      Scaffold.of(context).showSnackBar(
                          SnackBar(content: Text('移除列表项${index}')));
                    },
                    child: ListTile(
                      title: Text('${item}'),
                    ));
              }),
        ));
  }
}

/**
 * 方案2：
 */
class GestureDetectorDemo2 extends StatelessWidget {
  //假数据
  List<String> items = List<String>.generate(30, (i) => "列表项-${i}");

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
        title: '手势',
        home: new Scaffold(
          appBar: AppBar(
            title: Text('手势Demo'),
          ),
          body: ListView.builder(
              itemCount: items.length,
              itemBuilder: (context, index) {
                final item = items[index];
                return Dismissible(
                    key: Key(item),
                    onDismissed: (direction) {
                      //移除指定索引
                      items.removeAt(index);
                      //弹窗
                      Scaffold.of(context).showSnackBar(
                          SnackBar(content: Text('移除列表项${index}')));
                    },
                    child: ListTile(
                      title: Text('${item}'),
                    ));
              }),
        ));
  }
}
