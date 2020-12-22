import 'package:MovieApp/common/search_bar.dart';
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
          height: 60,
          color: Colors.pinkAccent,
        ),
        Positioned(
            child: Padding(
          padding: const EdgeInsets.only(left: 20, right: 20),
          child: ListView(
            children: [SearchBar(), Text('推荐')],
          ),
        ))
      ],
    );
  }
}
