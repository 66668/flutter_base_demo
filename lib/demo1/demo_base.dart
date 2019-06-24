import 'package:flutter/material.dart';

/**
 * 学习完基础组件后的，综合页面学习
 */
void main() => runApp(new BaseDemo());

class BaseDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //布局1的布局
    Widget _addressContaienr = new Container(
      padding: EdgeInsets.all(10),
      //横向布局
      child: Row(
        children: <Widget>[
          //布局1：
          Expanded(
              child: Column(
            //首部对齐
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              //布局1内的子布局1
              Container(
                padding: EdgeInsets.all(8),
                child: Text(
                  '风景区地址：',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
              //布局1内的子布局2
              Text(
                '山东省泰安市泰山5A级风景区',
                style: TextStyle(color: Colors.grey[500]),
              )
            ],
          )),
          //布局2
          Icon(
            Icons.star,
            color: Colors.red[500],
          ),
          //布局3
          Text('1024')
        ],
      ),
    );
    //先初始化，再调用
    Column _buildColumnButton(IconData data, String name) {
      return new Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Icon(
            data,
            color: Colors.lightGreen,
          ),
          Container(
            margin: EdgeInsets.all(10),
            child: Text(
              name,
              style: TextStyle(
                  fontSize: 10,
                  fontWeight: FontWeight.w400,
                  color: Colors.lightGreen[300]),
            ),
          )
        ],
      );
    }

    //布局2的布局
    Widget _buttonContainer = new Container(
      //横向布局
      child: Row(
        //水平均匀分布
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          _buildColumnButton(Icons.call, '电话'),
          _buildColumnButton(Icons.near_me, '导航'),
          _buildColumnButton(Icons.share, '分享'),
        ],
      ),
    );

    //布局3的布局
    Widget _conContainer = new Container(
      padding: EdgeInsets.all(20),
      child: Text(
          ''' 泰山，位于山东省东部，华北大平原的东侧，面积426平方公里，主峰玉皇顶海拔高度为1545(1532)米。泰山融雄伟壮丽的自然风光与悠久灿烂的历史文化于一体，她是中国首例世界文化与自然双遗产、世界地质公园、首批全国文明风景旅游区、首批国家5A级旅游景区。
      泰山以气势雄伟著称于世，形体高大，拔地通天，基础宽广，安稳厚重。景色千姿百态，悬崖峭壁，深沟峡谷，奇峰怪石，林海松涛，泉飞鸟鸣……并形成旭日东升、云海玉盘、碧霞宝光、晚霞夕照等独特的自然奇观。
      泰山自古就有神山、圣山、“五岳独尊”的称誉，是四海一统、国泰民安的象征。数千年来，封建帝王封禅告祭，文人名士登临抒怀，儒释道观和合共处，平民百姓顶礼膜拜，使之成为中华民族的精神家园。更有三大断裂、科马提岩、醉心石等奇特地质构造，岱庙、南天门、碧霞祠等巧夺天工的古代建筑杰作，秦刻石、经石峪、唐摩崖等历代名贵石刻，秦松、汉柏、唐槐等珍稀古树名木……这些，有机地将自然景观与人文景观融合为一体。一条从山下直通极顶长达九公里的中轴线，凭藉7000级石阶把天、地、人贯穿为一个完整的序列，从而成为人类投入大自然的通天之路。
      泰山，一座一万年堆积的自然宝库；
      泰山，一轴百万年续展的历史长卷；
      泰山，一阙七千阶谱写的朝天神曲；
      泰山，一幢五千年镌刻的文化丰碑。
      泰山，中华民族精神的家园，欢迎您到泰山来！ '''),
    );

    return new MaterialApp(
      title: '综合页面学习',
      theme: ThemeData(
        //主题色
        brightness: Brightness.light,
        //app主要部分背景色
        primaryColor: Colors.lightGreen[600],
        //前景色
        accentColor: Colors.orange,
      ),
      home: new Scaffold(
        appBar: AppBar(
          title: Text(
            '综合页面学习',
            style: TextStyle(color: Colors.white),
          ),
        ),
        //内容显示
        body: ListView(
          children: <Widget>[
            Image.asset(
              'images/egg.png',
              width: 600,
              height: 240,
              fit: BoxFit.fill,
            ),
            _addressContaienr,
            _buttonContainer,
            _conContainer,
          ],
        ),
      ),
    );
  }
}
