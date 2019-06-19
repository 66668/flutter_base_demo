import 'package:flutter/material.dart';
import 'package:flutter_base_demo/route01/route01_firstpage.dart';
import 'package:flutter_base_demo/route01/route01_secondpage.dart';

/**
 * 列表数据
 */
class MainListPage extends StatelessWidget {
  List<String> items = List<String>.generate(30, (i) => '这是列表项${i}');

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        title: Text('主界面列表数据'),
      ),
      body: ListView.builder(
          itemCount: items.length,
          itemBuilder: (context, index) {
            final item = items[index];
            return ListTile(
              title: Text('${item}'),
              //界面跳转:传递参数
              onTap: () {
                Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => FirstPage(intentDate: item)))
                    //上一个界面返回的数据
                    .then((Object result) {
                  //弹窗
                  Scaffold.of(context).showSnackBar(SnackBar(
                      content: Text('上个界面返回结果：${result.toString()}'),
                      duration: Duration(seconds: 2)));
                });
              },
            );
          }),
    );
  }
}
