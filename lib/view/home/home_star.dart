import 'package:MovieApp/view/home/star/star_actor.dart';
import 'package:flutter/material.dart';

import '../../common/search_bar.dart';
import 'recommend/swiper_banner.dart';

class HomeStar extends StatefulWidget {
  @override
  _HomeStarState createState() => _HomeStarState();
}

class _HomeStarState extends State<HomeStar> {
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
                    // 演员导航
                    StarActor(),
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
