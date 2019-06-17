import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  final appName = '这是全局主题';

  //

  @override
  Widget build(BuildContext context) {
    _demoMain();

    return MaterialApp(
      title: appName,
      theme: new ThemeData(
        brightness: Brightness.light,
        primaryColor: Colors.lightGreen[800],
        accentColor: Colors.orange[600],
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('welcome to sjy flutter'),
        ),
        body: Center(
          child: Text("sjy say Hello Flutter"),
        ),
      ),
    );
  }

  void _demoMain() {
    //使用User
    var user = User.renyixie(10);
    //
    var p1 = Point(1, 1);
    var p2 = p1 + Point(2, 2);
    print(p2.x);

    ///3
    print(p2.y);

    //
    var animal = new Animal();
    animal.eat();
    animal.run();
    var human = new Humans();
    human.eat();
    human.run();
    human.think();

    //
    var action = Action.test("Lance");
    print(action.runtimeType); //输出实际类型 子类
    action.printName();

    //Mixins
    var c = new C();
    var d = new D();
    c.getA(); //with的最后是B,所以调用B的getA()
    c.getB();
    c.getC();

    d.getA(); //with的最后是A,所以调用A的getA()
    d.getB();
    d.getD();
  }
}

Color getColor(Color a) {
  switch (a) {
    case Color.red:
      return Color.red;
    case Color.green:
      return Color.green;
    case Color.white:
      return Color.white;
  }
}

//===============================================(1)构造方法-常规和简写=====================================================
/**
 * Dart 并不支持构造函数的重载，而采用了命名构造函数为一个类实现多个构造函数：
 *
 * 在构造函数函数体执行之前会首先执行初始化列表，非常适合用来设置 final 变量的值。
 *
 * 有时候一个构造函数会调动类中的其他构造函数(在Java中就是 `this(...
 *
 * */
class User {
  String name;
  int age;

  //简写
  User(this.name, this.age);

  //命名构造（重载）
  User.renyixie(this.age) {
    this.name = 'zhangsan';
  }

//初始化列表
  User.formMap(Map map)
      : name = map['key01'],
        age = map['key02'];

  User.renyixie2(String name2)
      : name = name2,
        age = 0;

  //重定向构造
  User.renyixie3(String name, int age) : this(name, age); //调用上面的构造函数
}

//===============================================工厂构造函数=====================================================
/**
 * 当实现一个使用` factory` 关键词修饰的构造函数时，这个构造函数不必创建类的新实例。
 * 例如，一个工厂构造函数 可能从缓存中获取一个实例并返回，或者 返回一个子类型的实例。（工厂构造函数无法访问 `this`）
 */
class Logger {
  final String name;

  //从缓存获取对象
  static final Map _cache = {};

  //工厂构造函数，无法使用this变量
  factory Logger(String name) {
    if (_cache.containsKey(name)) {
      //工厂构造函数需要返回 Logger 实例对象
      return _cache[name];
    } else {
      final logger = Logger._internal(name);
      _cache[name] = logger;
      return logger;
    }
  }

  //以 _ 开头的函数、变量无法在库外使用
  Logger._internal(this.name);
}
//===============================================工厂构造函数--单例模式=====================================================

/**
 *
 */
class MyManager {
  static MyManager _instance;

  // 和static是一样的, 区别是factory毕竟是构造函数，需要返回一个实例，而static是静态方法。
  factory MyManager.getInstance() {
    if (_instance == null) {
      _instance = new MyManager._internal();
    }
    return _instance;
  }

  MyManager._internal();

//  static Manager getInstance() {
//    if (_instance == null) {
//      _instance = new Manager._internal();
//    }
//    return _instance;
//  }
}

//===============================================get set关键字设置=====================================================
/**
 * Dart中每个实例变量都隐含的具有一个 getter， 如果变量不是 final 的则还有一个 setter。
 * 可以通过实现 getter 和 setter 来创建新的属性， 使用 `get` 和 `set` 关键字定义 getter 和 setter：
 */
class Rect {
  num r;
  num l;
  num t;
  num b;

  Rect(this.r, this.l, this.t, this.b);

  //使用get关键字+新定义的属性名，表示结果
  num get right => r;

  num get left => l + 1;

  set right(num val) => r = val;

  set left(num val) => l = val;
}

//===============================================可重载的操作符=====================================================
class Point {
  int x;
  int y;

  Point(this.x, this.y);

  //模拟一个+重载，返回值随便写
  Point operator +(Point point) {
    return Point(x + point.x, y + point.y);
  }
}

//===============================================抽象类(1)类的继承=====================================================

class Animal {
  eat() {
    print('animal eat');
  }

  run() {
    print('animal run');
  }
}

class Humans extends Animal {
  think() {
    print('human think');
  }

  @override
  eat() {
    print('human eat');
  }
}

//===============================================抽象类（2）继承=====================================================
/**
 * 使用 `abstract` 修饰符定义一个抽象类。抽象类中允许出现无方法体的方法
 *
 */
abstract class Action {
  String myName;

  Action(this.myName);

  void add();

  void delete();

  void search();

  void update();

  void printName();

  //	抽象类不能被实例化，除非定义工厂方法并返回子类。

  factory Action.test(String name) {
    return new MyArray(name);
  }
}

class MyArray extends Action {
  MyArray(String myName) : super(myName);

  @override
  void add() {}

  @override
  void delete() {}

  @override
  void search() {}

  @override
  void update() {}

  @override
  void printName() {
    print(myName);
  }
}

//===============================================抽象类（3）implements=====================================================
/**
 *与Java不同，Dart中没有`interface`关键字，**Dart中每个类都隐式的定义了一个包含所有实例成员的接口**， 并且这个类实现了这个接口。
 * 如果你想 创建类 A 来支持 类 B 的 方法，而不想继承 B 的实现， 则类 A 应该实现 B 的接口。
 *
 * implements与extends的区别在于：
 *
 *  1、单继承，多实现。
 *
 *  2、继承可以有选择的重写父类方法并且可以使用`super`，实现强制重新定义接口所有成员。
 */
class Listener {
  void onClick() {}
}

class MyButton implements Listener {
  @override
  void onClick() {}
}
//===============================================枚举类型=====================================================

/**
 * 第一个枚举索引为0
 */
enum Color { red, green, white }

//===============================================Mixins====================================================
/**
 * mixins(混入)，使用with关键字，如果混入的类中有相同方法，默认为最右类的方法调用
 *
 * 使用with，同时也支持使用 extends
 *
 */

class Base {
  String getMessage() => 'Base';

  getBase() {}
}

class A {
  String getMessage() => 'A';

  getA() {
    print('A print a');
  }
}

class B {
  String getMessage() => 'B';

  getA() {
    print('B print a');
  }

  getB() {
    print('B print b');
  }
}

class C with A, B {
  getC() {
    print('C print c');
  }
}

class D with B, A {
  getD() {
    print('D print d');
  }
}

//===============================================范型=================================================

/**
 * 和java一样 :<>
 */
class Fanxing {
  Fanxing() {
    var week = <String>{'周一', '周二', '周三'};
    var weekmap = <String, String>{'1': '周一', '2': '周二', '3': '周三'};
    var userObj = new Map<String, Object>();
  }
}
//===============================================异步=================================================


//===============================================元数据(注解)=================================================
//===============================================注释（单行/多行/文档～）=================================================


