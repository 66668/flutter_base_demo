import 'dart:convert';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:http/http.dart' as http;
/**
 * flutter初次体验
 */

//（1）系统默认生成的demo
//void main() => runApp(MyApp());
//（2）使用第三方包
//void main() => runApp(url_lancherApp());
//(3)发起http请求，方式1
//void main() => runApp(http_App1());
//发起http请求，方式2 httpClient
void main() => runApp(http_App2());

//===============================================sjydmeo-使用第三方包=====================================================

class http_App1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'http请求',
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text("http请求示例"),
        ),
        body: new Center(
          child: new RaisedButton(
            onPressed: () {
              var url = 'https://www.baidu.com';
              //向http发送请求
              http.get(url).then((response) {
                print("状态：${response.statusCode}");
                print("正文：${response.body}");
              });
            },
            child: new Text('发送http请求'),
          ),
        ),
      ),
    );
  }
}

class http_App2 extends StatelessWidget {
  //获取天气数据
  void getWeatherData() async {
    try {
      //示例化对象
      HttpClient httpClient = new HttpClient();
      //发起请求
      Uri uri = Uri(
          scheme: "https",
          host: "t.weather.sojson.com",
          queryParameters: {
            "_id": 26,
            "city_code": 10103010,
            "city_name": "天津"
          });

      HttpClientRequest request = await httpClient.getUrl(
//          uri);//测试1
          Uri.parse("http://t.weather.sojson.com/api/weather/city/10103010"));//测试2
      //等待服务器返回
      HttpClientResponse response = await request.close();
      //解析数据
      var result = await response.transform(utf8.decoder).join();

      //输出响应头
      print(result);
      httpClient.close();
    } catch (e) {
      print("e:$e");
    } finally {}
  }

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'httpClient请求',
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text("httpClient请求示例"),
        ),
        body: new Center(
          child: new RaisedButton(
            child: new Text('获取天气'),
            onPressed: getWeatherData,
          ),
        ),
      ),
    );
  }
}

//===============================================sjydmeo-使用第三方包=====================================================
/**
 * 在pubspec.yaml配置第三方依赖url_launcher
 */
class url_lancherApp extends StatelessWidget {
  final appName = '第三方包demo';

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: appName,
      home: new Scaffold(
        appBar: AppBar(
          title: Text(appName),
        ),
        body: new Center(
          child: new RaisedButton(
            onPressed: () {
              //指定url，并发起请求
              const url = 'https://www.baidu.com';
              launch(url);
            },
            child: new Text('打开百度'),
          ),
        ),
      ),
    );
  }
}

//===============================================系统默认生成的demo=====================================================

/**
 *
 */
class MyApp extends StatelessWidget {
  final appName = '这是全局主题';

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //title主题
      //（1）
//      title: 'Flutter sjy demo',
      //（2）
      title: appName,
      //主题
      //（1）
      theme: new ThemeData(
        brightness: Brightness.light,
        primaryColor: Colors.lightGreen[800],
        accentColor: Colors.orange[600],
        //...
      ),
      //（2）
//      theme: ThemeData(
//        primarySwatch: Colors.red,
//      ),

      //home执行
      //（1）
//      home: MyHomePage(
////          title: 'Flutter Demo Home Page',
//        title: appName,
//      ),
      //(2)
//      home: Scaffold(
//        appBar: AppBar(
//          title: Text('welcome to sjy flutter'),
//        ),
//        body: Center(
//          child: Text("sjy say Hello Flutter"),
//        ),
//      ),
      //(3)
      home: MyThemeDemo_01(
        title: appName,
      ),
    );
  }
}

/**
 * 系统默认生成的demo
 */
class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

/**
 * 系统默认生成的demo
 */
class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.display1,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}

//===============================================sjydmeo-主题及局部主题=====================================================

class MyThemeDemo_01 extends StatelessWidget {
  MyThemeDemo_01({Key key, this.title}) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text(title),
      ),
      body: new Center(
        child: new Container(
          //获取主题的某颜色
          color: Theme.of(context).accentColor,
          child: new Text(
            '设置背景色',
            style: Theme.of(context).textTheme.title,
          ),
        ),
      ),
      floatingActionButton: new Theme(
          // 使用 copyWith 的方式获取 accentColor
          data: Theme.of(context).copyWith(accentColor: Colors.grey),
          child: new FloatingActionButton(
            onPressed: null,
            child: new Icon(Icons.computer),
          )),
    );
  }
}
