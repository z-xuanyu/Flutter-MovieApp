import 'package:MovieApp/common/search_bar.dart';
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
    return Stack(
      children: [
        Container(
          height: 80,
          color: Colors.pinkAccent,
        ),
        Positioned(
            child: Padding(
          padding: const EdgeInsets.only(left: 8, right: 8),
          child: ListView(
            shrinkWrap: true,
            children: [SearchBar(), SwiperBanner(), Navbar(), Text('推荐')],
          ),
        ))
      ],
    );
  }
}
