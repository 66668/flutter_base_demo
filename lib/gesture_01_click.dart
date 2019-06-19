import 'package:flutter/material.dart';

/**
 * 手势
 *
 */
void main() => runApp(new GestureDetectorDemo());

class GestureDetectorDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
        title: '手势',
        home: new Scaffold(
          appBar: AppBar(
            title: Text('手势Demo'),
          ),
          //需要包裹手势的组件
          body: Center(child: Builder(builder: (BuildContext context) {
            return GestureDetector(
              //
              onTap: () {
                print('手势-onTap-点击屏幕');
                Scaffold.of(context)
                    .showSnackBar(SnackBar(content: Text('手势-onTap-点击屏幕')));
              },
              onTapUp: (TapUpDetails detail) {
                print('手势-onTapUp');
              },
              onTapDown: (TapDownDetails detail) {},
              //
              onTapCancel: () {
                print('手势-onTapCancel-点击事件结束');
                Scaffold.of(context).showSnackBar(
                    SnackBar(content: Text('手势-onTapCancel-点击事件结束')));
              },
              //
              onDoubleTap: () {
                print('手势-onDoubleTap-双击');
                Scaffold.of(context)
                    .showSnackBar(SnackBar(content: Text('手势-onDoubleTap-双击')));
              },
              //
              onLongPress: () {
                print('手势-onLongPress-长点击');
                Scaffold.of(context).showSnackBar(
                    SnackBar(content: Text('手势-onLongPress-长点击')));
              },
              //垂直移动
              onVerticalDragStart: (DragStartDetails detail) {
                print('onVerticalDragStart');
              },
              onVerticalDragDown: (DragDownDetails detail) {
                print('onVerticalDragDown');
              },
              onVerticalDragEnd: (DragEndDetails detail) {
                print('onVerticalDragEnd');
              },
              onVerticalDragUpdate: (DragUpdateDetails detail) {
                print('onVerticalDragUpdate');
              },
              onVerticalDragCancel: () {
                print('onVerticalDragCancel');
              },
              //水平移动
              onHorizontalDragStart: (DragStartDetails detail) {
                print('onHorizontalDragStart');
              },
              onHorizontalDragDown: (DragDownDetails d) {
                print('onHorizontalDragDown');
              },
              onHorizontalDragCancel: () {
                print('onHorizontalDragCancel');
              },
              onHorizontalDragEnd: (DragEndDetails d) {
                print('onHorizontalDragEnd');
              },
              onHorizontalDragUpdate: (DragUpdateDetails d) {
                print('onHorizontalDragUpdate');
              },

              child: Container(
                alignment: AlignmentDirectional.center,
                width: 400,
                height: 400,
                color: Colors.orange,
                child: Text(
                  '手势测试',
                ),
              ),
            );
          })),
        ));
  }
}
