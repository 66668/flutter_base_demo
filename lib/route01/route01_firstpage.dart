import 'package:flutter/material.dart';
import 'package:flutter_base_demo/route01/route01_secondpage.dart';

class FirstPage extends StatelessWidget {
  String intentDate;

  /**
   * 来自跳转值
   */
  FirstPage({Key key, @required this.intentDate}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: Colors.green,
      appBar: AppBar(
        title: Text('FirstPage'),
      ),
      body: Builder(builder: (BuildContext context) {
        return Center(
          child: Column(
            children: <Widget>[
              Text(
                '我是上一个界面的跳转值：${intentDate}',
                style: TextStyle(backgroundColor: Colors.pink),
              ),
              FlatButton(
                  onPressed: () {
                    //界面跳转
                    Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => SecondPage(
                                      intentDate: 'FirstPage',
                                    )))
                        //上一个界面返回的数据
                        .then((Object result) {
                      Scaffold.of(context).showSnackBar(SnackBar(
                        content:
                            Text('FirstPage-上个界面返回结果：${result.toString()}'),
                        duration: Duration(seconds: 2),
                      ));
                    });
                  },
                  child: Text('跳转SecondPage')),
              FlatButton(
                  onPressed: () {
                    //
                    Navigator.pop(context);
                  },
                  child: Text('销毁/返回')),
              FlatButton(
                  onPressed: () {
                    //
                    Navigator.pop(context, '我是FirstPage');
                  },
                  child: Text('返回参数')),
            ],
          ),
        );
      }),
    );
  }
}
