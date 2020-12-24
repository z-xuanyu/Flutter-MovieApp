import 'package:MovieApp/common/search_bar.dart';
import 'package:MovieApp/view/home/recommend/swiper_banner.dart';
import 'package:MovieApp/view/home/star/star_active.dart';
import 'package:MovieApp/view/home/star/star_actor.dart';
import 'package:MovieApp/view/home/star/star_rank.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';

class HomeStar extends StatefulWidget {
  @override
  _HomeStarState createState() => _HomeStarState();
}

class _HomeStarState extends State<HomeStar> {
  List<String> items = ["1", "2", "3", "4", "5", "6", "7", "8"];
  RefreshController _refreshController =
      RefreshController(initialRefresh: false);

  void _onRefresh() async {
    print('_onRefresh');
    // monitor network fetch
    await Future.delayed(Duration(milliseconds: 1000));
    // if failed,use refreshFailed()
    _refreshController.refreshCompleted();
  }

  void _onLoading() async {
    print('_onLoading');
    // monitor network fetch
    await Future.delayed(Duration(milliseconds: 1000));
    // if failed,use loadFailed(),if no data return,use LoadNodata()
    items.add((items.length + 1).toString());
    if (mounted) setState(() {});
    _refreshController.loadComplete();
  }

  @override
  Widget build(BuildContext context) {
    return SmartRefresher(
        enablePullDown: true,
        enablePullUp: true,
        header: WaterDropMaterialHeader(
          backgroundColor: Colors.pinkAccent,
        ),
        footer: CustomFooter(
          builder: (BuildContext context, LoadStatus mode) {
            Widget body;
            if (mode == LoadStatus.idle) {
              body = Text("上拉加载");
            } else if (mode == LoadStatus.loading) {
              body = CupertinoActivityIndicator();
            } else if (mode == LoadStatus.failed) {
              body = Text("加载失败！点击重试！");
            } else if (mode == LoadStatus.canLoading) {
              body = Text("松手,加载更多!");
            } else {
              body = Text("没有更多数据了!");
            }
            return Container(
              color: Colors.pinkAccent,
              height: 55.0,
              child: Center(child: body),
            );
          },
        ),
        controller: _refreshController,
        onRefresh: _onRefresh,
        onLoading: _onLoading,
        child: ListView(
          shrinkWrap: true,
          children: [
            Stack(
              children: [
                Container(
                  height: 80,
                  color: Colors.pinkAccent,
                ),
                Positioned(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 8, right: 8),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // 搜索框
                        SearchBar(),
                        // banner
                        SwiperBanner(),
                        // 演员导航
                        StarActor(),
                        // 明星排行榜
                        StarRank(),
                        // 明星动态
                        StarActive(),
                        Text('推荐')
                      ],
                    ),
                  ),
                )
              ],
            )
          ],
        ));
  }
}
