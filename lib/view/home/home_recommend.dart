import 'package:MovieApp/common/search_bar.dart';
import 'package:MovieApp/common/video_item_card.dart';
import 'package:MovieApp/view/home/recommend/navbar.dart';
import 'package:MovieApp/view/home/recommend/swiper_banner.dart';
import 'package:flutter/material.dart';

class HomeRecommend extends StatefulWidget {
  HomeRecommend({Key key}) : super(key: key);

  @override
  _HomeRecommendState createState() => _HomeRecommendState();
}

class _HomeRecommendState extends State<HomeRecommend> {
  @override
  Widget build(BuildContext context) {
    return ListView(
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
                    // 导航
                    Navbar(),
                    // 视频列表
                    VideoItemCard(),
                    Padding(padding: const EdgeInsets.all(10)),
                    VideoItemCard(),
                    Text('推荐')
                  ],
                ),
              ),
            )
          ],
        )
      ],
    );
  }
}
