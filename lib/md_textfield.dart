import 'package:flutter/material.dart';

/**
 * Material Design 风格:TextField
 *
 * SnackBar需要使用Builder传递BuildContext
 *
 */
void main() => runApp(new MyTextField());

// 获取选中的数值
class MyTextField extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //添加文本监听器
    final TextEditingController _controller = new TextEditingController();
    _controller.addListener(() {
      print('你输入的内容：${_controller.text}');
    });
    return new MaterialApp(
      title: 'TextField',
      home: Scaffold(
        appBar: AppBar(
          title: Text('TextField'),
        ),
        body: new Center(
          child: TextField(
            //添加监听
            controller: _controller,
            maxLength: 30,
            maxLines: 3,
            //是否自动更正
            autocorrect: true,
            autofocus: true,
            //是否是密码
            obscureText: false,
            style: TextStyle(fontSize: 20, color: Colors.black),
            onChanged: (text) {
              print('内容改变时回调该方法：${text}');
            },
            decoration: InputDecoration(
                fillColor: Colors.grey.shade200,
                filled: true,
                //提示
                helperText: '用户名',
                suffixText: '用户名',
                suffixIcon: Icon(Icons.supervised_user_circle)),
          ),
        ),
      ),
    );
  }
}
