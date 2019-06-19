import 'package:flutter/material.dart';

/**
 * 手势 实现listView滑动删除item
 * 仍有问题，删除后数据错乱并且滑动后，数据又补充回来了
 */
void main() => runApp(new GestureDetectorDemo());

class GestureDetectorDemo extends StatelessWidget {
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
