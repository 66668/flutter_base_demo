/**
 *学习（4）方法一可选命名参数
 *
 * 针对可选位置参数不足，如果只给后边参数赋值，可以用该方式
 *
 *
 */

void fun({int i = 0, int j = 0}) {
  print("${i}--${j}");
}

void main() {
  fun(i: 10);
  fun(j: 30);
  fun(j: 40, i: 15);

  new MyClass(1, 2);
  new MyClass.J(4);
  new MyClass.Cool(10);
}

/**
 * --(1)--命名风格
 *
 * (1)推荐使用小写和_：库名和文件名
 *
 * (2)驼峰命名：类名
 *
 * (3)开头小写的驼峰命名：标志符，常量
 *
 * java/private---》dart/_xxx（使用下划线）
 *
 */

class MyClass {
  //--(2)--每个实例变量都会自动生成一个getter方法，每一个非final修饰的变量会自动生成一个setter变量
  int x;
  int j;

  //--(3)--使用下划线命名的变量，就相当于java的private
  int _k;

  //--(4)--dart 构造方法(语法糖)
  MyClass(this.x, this.j);

  //--(5)--命名构造方法:dart不支持方法重载，用如下方式：X，J,Cool随便起的名
  MyClass.X(this.x);

  MyClass.J(this.j);

  MyClass.Cool(int x) {
    this.x = x;
    //其他操作
    print("我好酷，用于初始化其他方法");
  }

  //--(6)--参数初始化列表：实例化一个构造方法的同时，在冒号后且{}之前定义参数，参数用逗号隔开，可以不写{}如下两个示例：（类似c++,{}必写）

  MyClass.XY()
      : x = 1,
        j = 2 {}

  MyClass.fromMap(Map map)
      : x = map["x"],
        j = map["y"] {}

//--(7)--重定向构造函数

}
