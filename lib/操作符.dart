/**
 * 学习（3） 操作符
 *
 * java中的都适合dart
 *
 * 有区别的如下：
 *
 * 1类型判断操作符
 *
 * （1）类型转换：as(不支持java的强转)
 * （2）类型判断 is(java isInstanceof不用)
 *
 * 2 赋值操作符
 *
 *  ??=（java非空判断赋值，比java简单）
 *
 * 3 三目运算符
 * （1）支持java三目
 * （2）exp1 ?? exp2(exp1为真，执行exp1)
 *
 * 4 级联操作符（链式调用）
 *
 *  ..
 *
 * 5 安全操作符
 *
 *  ？.
 *
 */
void main() {
  //1 类型操作符

  // 01
  num j = 1;

  int i = j as int;

  //02
  Object k = 19;
  if (k is int) {
    print("类型判断正确");
  }

  if (k is! bool) {
    print("类型判断正确");
  }

  //赋值操作符
  String str1;
  str1 ??= "123str";
  print(str1);

  //3

  //4
  new Builder()
    ..a()
    ..b();

  //5 安全操作符

  String ss;
  print(ss?.length);
}

/**
 * 级联操作符
 */
class Builder {
  void a() {
    print("级联操作符a");
  }

  void b() {
    print("级联操作符b");
  }
}
