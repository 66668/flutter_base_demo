import 'package:flutter/services.dart';

/**
 * 示例：flutter与android端通讯
 * flutter端：
 */
class FlutterClientDemo {
  //定义通道方法，参数和android端保持统一
  static const MethodChannel _channel =
      const MethodChannel('flutter_client_demo');

  //外部调用的异步方法
  static Future<String> get platformVersion async {
    final String version = await _channel.invokeMethod('getPlatformVersion');
    return version;
  }
}
