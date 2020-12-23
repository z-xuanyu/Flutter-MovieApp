import 'package:flutter/material.dart';

class Navbar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 5,
      childAspectRatio: 1.0,
      shrinkWrap: true,
      primary: true,
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.folder_special,
              color: Colors.pinkAccent,
            ),
            Text('片库')
          ],
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.live_tv,
              color: Colors.blue,
            ),
            Text('韩剧')
          ],
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.video_library,
              color: Colors.purpleAccent,
            ),
            Text('综艺')
          ],
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.library_books,
              color: Colors.pinkAccent,
            ),
            Text('情感笔记')
          ],
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.local_mall,
              color: Colors.pink,
            ),
            Text('商城')
          ],
        )
      ],
    );
  }
}
