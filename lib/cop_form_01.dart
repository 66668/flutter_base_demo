import 'package:flutter/material.dart';

/**
 *(9)基础组件-表单组件:Form/TextFormField
 *
 * 使用Form完成简单登陆界面
 *
 */
void main() => runApp(new LoginPage());

/**
 *
 */
class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() {
    return new _LoginPageState();
  }
}

class _LoginPageState extends State<LoginPage> {
  //用于获取form表单组件
  GlobalKey<FormState> loginKey = new GlobalKey();

  //
  String userName;

  //
  String userPs;

  void login() {
    //读取当前form组件状态
    var loginForm = loginKey.currentState;
    //验证表单
    if (loginForm.validate()) {
      loginForm.save();
      print('userName = ${userName},userPs = ${userPs}');
    }
  }

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: '表单Form示例',
      home: new Scaffold(
        appBar: AppBar(
          title: Text('表单Form示例'),
        ),
        body: new Column(
          children: <Widget>[
            //用户输入布局
            Container(
              padding: EdgeInsets.all(15),
              child: new Form(
                key: loginKey,
                child: new Column(
                  children: <Widget>[
                    //请输入用户名
                    new TextFormField(
                      decoration: new InputDecoration(labelText: '请输入用户名'),
                      onSaved: (value) {
                        userName = value;
                      },
                      validator: (value) {
                        return value.length < 1 ? "用户名不能为空" : null;
                      },
                      onFieldSubmitted: (value) {},
                    ),
                    //用户输入
                    new TextFormField(
                      decoration: new InputDecoration(labelText: '请输入密码'),
                      obscureText: true,
                      //Form 表单验证器
                      validator: (value) {
                        return value.length < 6 ? "密码不能小于6位" : null;
                      },
                      onSaved: (value) {
                        userPs = value;
                      },
                    )
                  ],
                ),
              ),
            ),
            //按钮布局
            new SizedBox(
              width: 340,
              height: 45,
              child: new RaisedButton(
                onPressed: login,
                child: Text(
                  '登陆',
                  style: TextStyle(fontSize: 20),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
