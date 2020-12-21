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
            children: [
              TextField(
                style: TextStyle(fontSize: 16),
                decoration: InputDecoration(
                    hintText: '输入搜索关键词',
                    fillColor: Colors.white,
                    filled: true,
                    border: InputBorder.none),
              ),
              Text('推荐')
            ],
          ),
        ))
      ],
    );
  }
}
