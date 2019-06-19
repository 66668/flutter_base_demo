import 'package:flutter/material.dart';
import 'package:flutter_base_demo/route01/route01_list.dart';

/**
 * 路由跳转示例:
 * (1)跳转
 * （2）界面销毁/返回
 * （3）跳转传值
 * （4）返回传值
 *
 */

void main() => runApp(new MaterialApp(
      title: 'route路由示例',
      //列表界面
      home: new MainListPage(),
    ));
