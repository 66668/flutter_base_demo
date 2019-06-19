/**
 *
 * 学习（2）内置类型
 *
 * dart语言没有java的8大基本类型，而是有7个内置类型：
 *
 *数值num/字符串String/布尔bool/数组List/映射集合Map/Unicode Runes/标志符 Symbols
 *
 *
 *
 */

void main() {
  // 01 数值类型
  int i = 1;
  print(i.bitLength);

  // 02 字符串
  String str = "快扶我去大保健";
  print(str);
  //string拼接
  int num = 88;
  String str1 = "${str}，我要找${num}号技师";
  print(str1);

  //字符串支持单引号，单双引号来回切换，可以实现java的转义字符功能
  String str2 = "'我是宋均洋'";
  print(str2);

  //输出转义字符串
  String str3 = "\\n"; //java方式
  //r表示raw:原始
  String str4 = r"\n"; //dart方式
  print("$str3 $str4");

  //支持多行的3对双引号声明
  String str5 = """
  宋均洋第一行
  sjy第二行
  sjy第三航
  哈哈哈
  """;
  print(str5);

  //03布尔
  bool isTrue = false;
  print(isTrue);

  //04数组类型 List

  List<String> list = new List(); //和java有区别
  List<int> list_int = [1, 2, 3, 3, 4, 5, 5, 6];
  print("数组下标取数值${list_int[0]}");

  //两种遍历数组 iter快捷键
  for (var o in list_int) {}

  //同java方式 itar快捷键
  for (var j = 0; j < list_int.length; ++j) {
    var o = list_int[j];
  }

  //const修饰的list注意
  //const修饰在=右边，表示对象不可变，不可以增删数据，但是可以修改引用
  //const修饰在=左边，表示饮用不可变，不可以增删数据
  List<int> list1 = const [1, 2, 3, 4];
  list1 = [34, 35, 45, 56];
  print(list1[1]);

  const List<int> list2 = [1, 2, 3, 4];
  print(list2[1]);

  //05 映射集合 map
  Map<String, int> map1 = new Map();

  Map<String, int> map2 = {"key1": 100, "key2": 200};

  print("输出map结果=${map2["key1"]}");

  //用const声明，同上List

  //
  var map3 = {1: 1, 2: 2};
  map3[3] = 100;
  print("打印map结果${map3[3]}");

  //map的迭代器遍历
  var vals = map3.keys; //如下就和List遍历一样

  for (var o in vals) {}

  for (var j = 0; j < map3.length; ++j) {
    var o = map3[j];
  }

  // 06 Runes ：特殊字符表示（Unicode32）
  //eg:拍手图 java表示32位：String clapping = "\uD83D\uDC4F"
  var clapping ='\u{1f44f}';
  print("Runes="+clapping);//👏
  print(clapping.codeUnits);//[55357, 56399]
  print(clapping.runes.toList());//[128079]


  //07 Sysmbols 标志符

  var a  = #A;
  print(a.runtimeType);

}
