import 'package:flutter/material.dart';

class StarRank extends StatefulWidget {
  StarRank({Key key}) : super(key: key);

  @override
  _StarRankState createState() => _StarRankState();
}

class _StarRankState extends State<StarRank> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ListTile(
          contentPadding: EdgeInsets.symmetric(horizontal: 1.0),
          leading: Icon(
            Icons.equalizer,
            color: Colors.purpleAccent,
          ),
          title: Text('明星榜单'),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: Container(
                margin: const EdgeInsets.only(right: 5),
                color: Colors.blue,
                padding: const EdgeInsets.all(10),
                child: Text('人气榜'),
              ),
            ),
            Expanded(
              child: Container(
                margin: const EdgeInsets.only(right: 5),
                color: Colors.blue,
                padding: const EdgeInsets.all(10),
                child: Text('人气榜'),
              ),
            ),
            Expanded(
              child: Container(
                color: Colors.blue,
                padding: const EdgeInsets.all(10),
                child: Text('人气榜'),
              ),
            )
          ],
        )
      ],
    );
  }
}
