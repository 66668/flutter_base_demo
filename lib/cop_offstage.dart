import 'package:flutter/material.dart';

/**
 * (8)基础组件-offStage:控制child控件是否显示
 *
 */
void main() => runApp(new OffStageDemo());

class OffStageDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'OffStageDemo',
      home: _OffStage(),
    );
  }
}

class _OffStage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _OffStageState();
  }
}

bool _mOffStage = true;

class _OffStageState extends State<_OffStage> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        title: Text('OffStageDemo'),
      ),
      body: Center(
        child: new Offstage(
          offstage: _mOffStage,
          child: Text('我显示了'),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            _mOffStage = !_mOffStage;
          });
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
