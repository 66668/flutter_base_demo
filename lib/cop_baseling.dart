import 'package:flutter/material.dart';

/**
 * (8)基础组件-baseline:不同文字元素等，通过该参数，在一条线上显示
 *
 */
void main() => runApp(new BaselineDemo());

class BaselineDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'baseline示例',
      home: new Scaffold(
        appBar: AppBar(
          title: Text('baseline示例'),
        ),
        body: new Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            //设置三个基准线
            new Baseline(
              baseline: 80,
              //字符底部对齐
              baselineType: TextBaseline.alphabetic,
              child: Text(
                '这是要对齐的字',
                style: TextStyle(
                    fontSize: 18, textBaseline: TextBaseline.alphabetic),
              ),
            ),
            new Baseline(
              baseline: 80,
              //字符底部对齐
              baselineType: TextBaseline.alphabetic,
              child: Container(
                width: 30,
                height: 40,
                color: Colors.green,
              ),
            ),
            new Baseline(
              baseline: 80,
              //字符底部对齐
              baselineType: TextBaseline.alphabetic,
              child: Text(
                '这是要对齐的字',
                style: TextStyle(
                    fontSize: 25, textBaseline: TextBaseline.alphabetic),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
