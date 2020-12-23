import 'package:flutter/material.dart';

class VideoItemCard extends StatefulWidget {
  VideoItemCard({Key key}) : super(key: key);

  @override
  _VideoItemCardState createState() => _VideoItemCardState();
}

class _VideoItemCardState extends State<VideoItemCard> {
  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Padding(
        padding: const EdgeInsets.only(bottom: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              '热播好剧',
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600),
            ),
            Row(
              children: [
                Text(
                  '查看更多',
                  style: TextStyle(color: Colors.grey),
                ),
                Icon(
                  Icons.keyboard_arrow_right,
                  color: Colors.grey,
                )
              ],
            )
          ],
        ),
      ),
      GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              childAspectRatio: 6 / 10,
              crossAxisCount: 3,
              mainAxisSpacing: 10,
              crossAxisSpacing: 8),
          itemCount: 6,
          primary: false,
          shrinkWrap: true,
          itemBuilder: (BuildContext context, int index) {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Stack(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(5),
                      child: Image.network(
                        'https://ae01.alicdn.com/kf/U1dd9c5b2e5cd4d558bfb05b4557fa99aY.jpg',
                        fit: BoxFit.cover,
                      ),
                    ),
                    Positioned(
                      child: Text(
                        '10集全',
                        style: TextStyle(color: Colors.white),
                      ),
                      left: 5,
                      bottom: 5,
                    )
                  ],
                ),
                Center(
                  child: Text('甜蜜家园'),
                )
              ],
            );
          })
    ]);
  }
}
