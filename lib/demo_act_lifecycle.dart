import 'package:flutter/widgets.dart';

/**
 *监听容器 Activity 的生命周期状态
 *
 *
 *     inactive — 应用处于非活跃状态并且不接收用户输入。这个事件只适用于 iOS，Android 上没有对应的事件。

    paused — 应用当前对用户不可见，无法响应用户输入，并运行在后台。这个事件对应于 Android 中的 onPause()。

    resumed — 应用对用户可见并且可以响应用户的输入。这个事件对应于 Android 中的 onPostResume()。

    suspending — 应用暂时被挂起。这个事件对应于 Android 中的 onStop；iOS 上由于没有对应的事件， 因此不会触发此事件。
 */
void main() {
  runApp(Center(child: LifecycleWatcher()));
}

class LifecycleWatcher extends StatefulWidget {
  @override
  _LifecycleWatcherState createState() => _LifecycleWatcherState();
}

class _LifecycleWatcherState extends State<LifecycleWatcher>
    with WidgetsBindingObserver {
  AppLifecycleState _lastLifecycleState;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addObserver(this);
  }

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);
    super.dispose();
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    setState(() {
      _lastLifecycleState = state;
    });
  }

  @override
  Widget build(BuildContext context) {
    if (_lastLifecycleState == null)
      return Text('This widget has not observed any lifecycle changes.',
          textDirection: TextDirection.ltr);

    print(
        'The most recent lifecycle state this widget observed was: $_lastLifecycleState,${TextDirection.ltr}');
    return Text(
        'The most recent lifecycle state this widget observed was: $_lastLifecycleState.',
        textDirection: TextDirection.ltr);
  }
}
