/**
 * 学习（1）变量
 *
 * dart语言不用类似java的8大基本类型声明变量
 *
 * 有三种方式：
 *
 * Object/var/dynamic
 *
 * （1）Object可以是任意类型变量
 *
 * （2）var 推荐使用（缺点是无法一眼看出数据类型，所以考验变量名命名）
 *
 * 赋值的那一刻，决定了它是什么类型。
 *
 * eg://该值j是String类型，后续再赋值不可以改变类型
 * var j= "abc";
 *
 * eg:该值j没有定义类型，是Object类型，赋值时可以任意改变类型
 * var j ;
 * j="abc";
 * j=100;
 *
 *（3）dynamic 动态确定赋值类型（而不是编译时确定），推荐使用静态两个方式
 *
 * dart常量 final/const（运行时间有区别）
 *
 *
 *
 * const 编译期常量（效率更高）推荐使用
 *
 * 支持：
 * const i = 1;
 * const j = i+1;
 *
 * final 运行期常量(先编译，后运行)
 *
 * 支持：
 * const i = 1;
 * final z = i+3;
 *
 */
void main() {
  Object int_i = 1;
  Object str_a = "abc";
  Object long_l = 100;
}
