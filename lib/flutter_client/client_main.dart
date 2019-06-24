import 'package:flutter/material.dart';
import 'package:flutter_base_demo/flutter_client/FlutterClientDemo.dart';

/**
 * TODO 测试未通过
 * flutter与android通讯
 */
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'flutter与android通讯',
      home: PlatformDemo(),
    );
  }
}

class PlatformDemo extends StatefulWidget {
  @override
  PlatformState createState() {
    return PlatformState();
  }
}

class PlatformState extends State<PlatformDemo> {
  String _platformVerison = "unkown";

  @override
  void initState() {
    super.initState();
    initPlatform();
  }

  Future<void> initPlatform() async {
    String _version;
    try {
      _version = await FlutterClientDemo.platformVersion;
    } on Exception {
      _version = "获取失败";
    }
    //更新UI
    setState(() {
      _platformVerison = _version;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('flutter与android通讯-示例'),
      ),
      body: Center(
        child: Text('flutter与android通讯，获取android版本=${_platformVerison}'),
      ),
    );
  }
}
