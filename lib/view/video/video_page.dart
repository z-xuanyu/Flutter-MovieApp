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

  TabController _tabController;
  List tabs = ["关注", "推荐", "我的"];

  @override
  void initState() {
    super.initState();
    // 创建Controller
    _tabController =
        TabController(length: tabs.length, vsync: this, initialIndex: 1);

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
        // 视频容器
        DefaultTabController(
          length: tabs.length,
          child: TabBarView(
            controller: _tabController,
            children: [
              Center(child: Text('明确')),
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
                    print(index);
                    setState(() {});
                  }),
              Center(child: Text('明确'))
            ],
          ),
        ),
        // 视频顶部tab
        Positioned(
          child: DefaultTabController(
            length: tabs.length,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: TabBar(
                      controller: _tabController,
                      tabs: tabs.map((e) => Tab(text: e)).toList(),
                      isScrollable: true,
                      indicatorColor: Colors.white,
                      labelStyle: TextStyle(fontSize: 15),
                      indicator: const BoxDecoration(),
                      indicatorPadding: EdgeInsets.zero),
                ),
              ],
            ),
          ),
        ),
        // 评论、点赞、转发
        Positioned(
          bottom: 50,
          right: 20,
          child: VideoActionsToolbar(),
        ),
        // 视频描述
        Positioned(bottom: 30, left: 10, child: VideoDescription())
      ],
    );
  }
}
