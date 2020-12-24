import 'package:flutter/material.dart';

class HanjuNavBar extends StatelessWidget {
  const HanjuNavBar({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 4,
      childAspectRatio: 1.1,
      shrinkWrap: true,
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.folder_special,
              size: 35,
              color: Colors.pink[200],
            ),
            Text('片库')
          ],
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.subscriptions,
              color: Colors.greenAccent,
              size: 35,
            ),
            Text('剧荒')
          ],
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.date_range,
              color: Colors.blue[200],
              size: 35,
            ),
            Text('时间表')
          ],
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.equalizer,
              color: Colors.yellow[600],
              size: 35,
            ),
            Text('排行榜')
          ],
        )
      ],
    );
  }
}
