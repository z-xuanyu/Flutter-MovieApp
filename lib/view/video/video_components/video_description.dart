import 'package:flutter/material.dart';

class VideoDescription extends StatefulWidget {
  VideoDescription({Key key}) : super(key: key);

  @override
  _VideoDescriptionState createState() => _VideoDescriptionState();
}

class _VideoDescriptionState extends State<VideoDescription> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          '@皇家族',
          style: TextStyle(color: Colors.white, fontSize: 18),
        ),
        SizedBox(
          height: 10,
        ),
        Row(
          children: [
            Text(
              '皇家族最岛基地，很吊的一段文字！',
              style: TextStyle(color: Colors.white70, fontSize: 18),
            )
          ],
        ),
        SizedBox(
          height: 10,
        ),
        Row(
          children: [
            Icon(
              Icons.music_note,
              color: Colors.white,
            ),
            Text(
              'mooth Criminal- Michael',
              style: TextStyle(color: Colors.white, fontSize: 18),
            )
          ],
        )
      ],
    );
  }
}
