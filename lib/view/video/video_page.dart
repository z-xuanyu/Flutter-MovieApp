import 'package:MovieApp/view/video/follow/video_follow.dart';
import 'package:MovieApp/view/video/video_components/video_actions_toolbar.dart';
import 'package:MovieApp/view/video/video_components/video_description.dart';
import 'package:flutter/material.dart';
import 'package:fijkplayer/fijkplayer.dart';

class VideoPage extends StatefulWidget {
  VideoPage({Key key}) : super(key: key);

  @override
  _VideoPageState createState() => _VideoPageState();
}

class _VideoPageState extends State<VideoPage>
    with SingleTickerProviderStateMixin {
  final FijkPlayer player = FijkPlayer();
  int _tabCurrentIndex = 2; // Tab当前状态（默认小视频页面）
  TabController _tabController;
  List tabs = ["关注", "推荐", "小视频", "影视", "美食", "娱乐", "生活", "健康"];

  @override
  void initState() {
    super.initState();
    // 创建TabController
    _tabController = TabController(
        length: tabs.length, vsync: this, initialIndex: _tabCurrentIndex);
    // 监听TabBarView 滑动 改变tab顶部背景色
    _tabController.addListener(() {
      setState(() {
        _tabCurrentIndex = _tabController.index;
      });
    });

    player.setDataSource(
        "https://tjc-download.weiyun.com/ftn_handler/e48d4ff6f33167b5b2dcd8baa06ba00835f05ec4f707d94c04dc17237d6b82fc/123jx.mp4",
        autoPlay: true);
  }

  @override
  void dispose() {
    super.dispose();
    player.release();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        // Tab视频容器
        Container(
          child: TabBarView(
            controller: _tabController,
            children: [
              VideoFollow(),
              Center(child: Text('推荐页面')),
              // 小视频
              Stack(
                children: [
                  PageView.builder(
                      itemCount: 3,
                      scrollDirection: Axis.vertical,
                      itemBuilder: (BuildContext context, int index) {
                        return FijkView(
                            player: player,
                            fit: FijkFit.fitHeight,
                            fsFit: FijkFit.fitHeight);
                      },
                      onPageChanged: (index) {
                        setState(() {});
                      }),
                  // 评论、点赞、转发
                  Positioned(
                    bottom: 50,
                    right: 20,
                    child: VideoActionsToolbar(),
                  ),
                  // 视频描述
                  Positioned(bottom: 30, left: 10, child: VideoDescription())
                ],
              ),
              Center(child: Text('影视页面')),
              Center(child: Text('美食页面')),
              Center(child: Text('娱乐页面')),
              Center(child: Text('生活页面')),
              Center(child: Text('健康页面'))
            ],
          ),
        ),
        // 视频顶部Tab
        Container(
          height: 80,
          child: AppBar(
            elevation: 0,
            backgroundColor:
                _tabCurrentIndex == 2 ? Colors.transparent : Colors.pinkAccent,
            title: TabBar(
                onTap: (index) {
                  setState(() {
                    _tabCurrentIndex = index;
                  });
                },
                controller: _tabController,
                tabs: tabs.map((e) => Tab(text: e)).toList(),
                isScrollable: true,
                indicatorColor: Colors.white,
                labelStyle: TextStyle(fontSize: 15),
                indicator: const BoxDecoration(),
                indicatorPadding: EdgeInsets.zero),
            actions: [
              IconButton(
                icon: Icon(Icons.search),
                onPressed: () {},
              )
            ],
          ),
        ),
      ],
    );
  }
}
