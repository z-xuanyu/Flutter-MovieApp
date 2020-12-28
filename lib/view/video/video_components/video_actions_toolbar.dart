import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class VideoActionsToolbar extends StatefulWidget {
  VideoActionsToolbar({Key key}) : super(key: key);

  @override
  _VideoActionsToolbarState createState() => _VideoActionsToolbarState();
}

class _VideoActionsToolbarState extends State<VideoActionsToolbar> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Stack(
          children: [
            CircleAvatar(
              radius: 25,
              backgroundImage: NetworkImage(
                  'https://wxt.sinaimg.cn/large/007XivJ0gy1g93mawj6coj30qn0qnabt.jpg'),
            ),
            Positioned(
                right: 2,
                bottom: -2,
                child: Icon(
                  Icons.add_circle,
                  color: Colors.red,
                ))
          ],
        ),
        SizedBox(
          height: 20,
        ),
        Column(
          children: [
            Icon(
              Icons.favorite_border,
              color: Colors.white,
              size: 35,
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              "4644",
              style: TextStyle(color: Colors.white),
            )
          ],
        ),
        SizedBox(
          height: 20,
        ),
        Column(
          children: [
            FaIcon(
              FontAwesomeIcons.commentDots,
              size: 30,
              color: Colors.white,
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              "4644",
              style: TextStyle(color: Colors.white),
            )
          ],
        ),
        SizedBox(
          height: 20,
        ),
        Column(
          children: [
            FaIcon(
              FontAwesomeIcons.share,
              size: 30,
              color: Colors.white,
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              "4644",
              style: TextStyle(color: Colors.white),
            )
          ],
        ),
      ],
    );
  }
}
