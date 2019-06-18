import 'package:flutter/material.dart';

/**
 * Material Design 风格:dialog
 * (1)SimpleDialog
 * (2)AlertDialog(比SimpleDialog复杂些)
 *
 */
void main() => runApp(new MyAlertDialog());

// 获取选中的数值
enum Option { A, B, C }

class MyAlertDialog extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'AlertDialog',
      home: AlertDialogDemo(),
    );
  }
}

class AlertDialogDemo extends StatefulWidget {
  @override
  _AlertDialogDemoState createState() => _AlertDialogDemoState();
}

class _AlertDialogDemoState extends State<AlertDialogDemo> {
  String _chose = "nothing";

  /**
   * AlertDialog
   */
  Future _openAlertDialog() async {
    final option = await showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            //标题
            title: Text('AlertDialog标题'),
//            titlePadding: EdgeInsets.all(30),
            //内容
            content: SingleChildScrollView(
              child: ListBody(
                children: <Widget>[
                  Text('是否一定要删除内容?'),
                  Text('确认删除数据后，不可恢复！'),
                ],
              ),
            ),
//            contentPadding: EdgeInsets.all(10),
            //按钮
            actions: <Widget>[
              FlatButton(
                  onPressed: () {
                    // 关闭对话框
                    Navigator.pop(context, Option.A);
                  },
                  child: Text('确定')),
              FlatButton(
                  onPressed: () {
                    // 关闭对话框
                    Navigator.pop(context, Option.B);
                  },
                  child: Text('取消')),
            ],
          );
        });

    switch (option) {
      case Option.A:
        setState(() {
          _chose = "A";
        });
        break;
      case Option.B:
        setState(() {
          _chose = "B";
        });
        break;
      case Option.C:
        setState(() {
          _chose = "C";
        });
        break;
      default:
    }
  }

  /**
   * SimpleDialog
   */
  Future _openSimpleDialog() async {
    final option = await showDialog(
        context: context,
        builder: (BuildContext context) {
          return SimpleDialog(
            title: Text('simpleDialog'),
            children: <Widget>[
              SimpleDialogOption(
                child: Text('Options A'),
                onPressed: () {
                  // 关闭对话框
                  Navigator.pop(context, Option.A);
                },
              ),
              SimpleDialogOption(
                child: Text('Options B'),
                onPressed: () {
                  // 关闭对话框
                  Navigator.pop(context, Option.B);
                },
              ),
              SimpleDialogOption(
                child: Text('Options C'),
                onPressed: () {
                  // 关闭对话框
                  Navigator.pop(context, Option.C);
                },
              ),
            ],
          );
        });

    switch (option) {
      case Option.A:
        setState(() {
          _chose = "A";
        });
        break;
      case Option.B:
        setState(() {
          _chose = "B";
        });
        break;
      case Option.C:
        setState(() {
          _chose = "C";
        });
        break;
      default:
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('AlertDialog'),
        elevation: 0.0,
      ),
      body: Container(
        alignment: AlignmentDirectional.center,
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            new FlatButton(
                onPressed: _openAlertDialog, child: Text('AlertDialog')),
            new FlatButton(
                onPressed: _openSimpleDialog, child: Text('SimpleDialog')),
            Text('你选择了:$_chose'),
          ],
        ),
      ),
    );
  }
}
