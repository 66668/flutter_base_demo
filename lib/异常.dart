/**
 * java抛异常，调用的方法处必须try/catch
 *
 * dart抛异常，调用处可以不try/catch
 *
 * dart如果处理try/catch,则catch(e)为隐示异常，不可以指明异常类型
 *
 */

void testException1() {
  throw new Exception("测试异常1");
}

void testException2() {
  throw new Exception("测试异常2");
}

void testException3() {
  throw new Exception("测试异常3");
}

void testException4() {
  throw "测试异常4";
}

void main() {
  //dart方式1
//  testException1();

  //dart方式2

  try {
    testException2();
  } catch (e, s) {
    //第一个参数，是异常类型
    print(e.runtimeType);
    //调用栈信息，第二个参数可不写
    print(s.runtimeType);
    print(s);
  }

  //方式3 根据不同的类型，处理不同的异常
  // 语法：on Type catch
  //type可以为各种类型，也可以是方法

  try {
    testException3();
  } on Exception catch (e, s) {
    print(s);
  } on int catch (s) {
    //做自定义抛异常
    print("抛int异常：${s}");
  } on String catch (s) {
    print("抛String异常：${s}");
  }

  try {
    testException4();
  } on Exception catch (e, s) {
    print(s);
  } on int catch (s) {
    //做自定义抛异常
    print("抛int异常：${s}");
  } on String catch (s) {
    print("抛String异常：${s}");
  } finally {}
}
