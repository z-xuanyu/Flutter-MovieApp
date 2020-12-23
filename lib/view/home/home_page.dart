import 'package:MovieApp/view/home/home_hanju.dart';
import 'package:MovieApp/view/home/home_recommend.dart';
import 'package:MovieApp/view/home/home_star.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            elevation: 0, // 去除appBar底部阴影
            centerTitle: true,
            title: TabBar(
                indicatorPadding: EdgeInsets.zero,
                // 设置为false tab 将平分宽度，为true tab 将会自适应宽度
                isScrollable: true,
                indicatorColor: Colors.white,
                indicatorWeight: 2.0,
                // 指示器大小计算方式，TabBarIndicatorSize.label跟文字等宽,TabBarIndicatorSize.tab跟每个tab等宽
                indicatorSize: TabBarIndicatorSize.label,
                tabs: [Tab(text: '明星'), Tab(text: '推荐'), Tab(text: '韩剧')]),
            actions: [
              IconButton(
                  icon: Icon(
                    Icons.search,
                    color: Colors.white,
                  ),
                  onPressed: null)
            ],
          ),
          body: TabBarView(
            children: [HomeStar(), HomeRecommend(), HomeHanju()],
          ),
        ));
  }
}
