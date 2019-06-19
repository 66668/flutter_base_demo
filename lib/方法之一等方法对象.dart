/**
 * 学习（4）方法一等方法对象
 * 方法
 *
 * Dart 是一个真正的面向对象语言，方法也是对象并且具有一种 类型  `Function`。 这意味着，方法可以赋值给变量，
 * 也可以当做其他方法的参数。可以把方法当做参数调用另外一个方法
 *
 * （1）一等方法对象
 *
 * 看如下代码，dart就可以取代java的回调方法，直接传匿名方法就可以实现回调的效果
 *
 * 换句话，dart的匿名方法实现了java的回调方法
 *
 * （2）可选位置参数
 *
 * （3）可选命名参数
 *
 * （4）默认参数值（已在2 3中实现）
 *
 * （5）匿名方法/lamda表达式/闭包（该方法中已实现）
 *
 *
 * */

//方式1
//重点：这个fun方法的参数f无法确定传入的是什么参数，返回什么，所以用typedef，定义好要传输的参数，和返回类型
void fun(Function f) {
  print("方式1：void fun(Function f)");
  //由于该处参数无法确定个数，所以可以引入typedef来定义类型
  f(1, 2, "abc");
}

//方式2
//定义一个类型：F类型。这个类型其实是一个方法，接受两个参数，返回void
typedef void F(int i, int j);

void fun2(F f) {
  print("方式2：void fun2(F)");
  f(3, 4);
}

void main() {
  //方式1：

  //方法都是对象，可以赋值给Function变量
  Function f = fun;

  //
  f((int i, int j, String str) {
    print("方式1：匿名内部方法(int int string){return}");
    return "匿名返回1";
  });

  //方式2：
  fun2((int i, int j) {
    print("方式2：匿名内部方法(int int){return}");
    return "匿名返回2";
  });
}
