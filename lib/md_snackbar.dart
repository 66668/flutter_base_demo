import 'package:flutter/material.dart';

/**
 * Material Design 风格:snackbar
 *
 * SnackBar需要使用Builder传递BuildContext
 *
 */
void main() => runApp(new MySnackBar());

// 获取选中的数值
class MySnackBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'AlertDialog',
      home: SnackBarDemo(),
    );
  }
}

class SnackBarDemo extends StatefulWidget {
  @override
  _SnackBarDemoDemoState createState() => _SnackBarDemoDemoState();
}

class _SnackBarDemoDemoState extends State<SnackBarDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('SnackBar'),
        elevation: 0.0,
      ),
      //SnackBar需要使用Builder传递BuildContext
      body: new Builder(builder: (BuildContext contxt) {
        return new Container(
          alignment: AlignmentDirectional.center,
          padding: EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              new FlatButton(
                  onPressed: () {
                    //弹窗
                    Scaffold.of(contxt).showSnackBar(new SnackBar(
                      backgroundColor: Colors.grey,
                      duration: Duration(seconds: 3),
                      content: Text('SnackBarDemo示例'),
                      action: SnackBarAction(label: '撤销', onPressed: () {}),
                    ));
                  },
                  child: Text('SnackBar')),
            ],
          ),
        );
      }),
    );
  }
}
