import 'package:MovieApp/common/search_bar.dart';
import 'package:MovieApp/common/video_item_card.dart';
import 'package:MovieApp/view/home/hanju/hanju_navbar.dart';
import 'package:flutter/material.dart';

class HomeHanju extends StatelessWidget {
  const HomeHanju({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      children: [
        Container(
          padding: const EdgeInsets.all(8),
          color: Colors.pinkAccent,
          child: SearchBar(),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 8, right: 8),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              HanjuNavBar(),
              VideoItemCard(),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(
                      icon: Icon(
                        Icons.autorenew,
                        color: Colors.pinkAccent,
                      ),
                      onPressed: null),
                  Text(
                    '换一换',
                    style: TextStyle(color: Colors.pinkAccent),
                  )
                ],
              )
            ],
          ),
        )
      ],
    );
  }
}
