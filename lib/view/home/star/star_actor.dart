import 'package:flutter/material.dart';

class StarActor extends StatefulWidget {
  @override
  _StarActorState createState() => _StarActorState();
}

class _StarActorState extends State<StarActor> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          border:
              Border(bottom: BorderSide(width: 1, color: Colors.grey[200]))),
      height: 100,
      child: ListView.builder(
          shrinkWrap: true,
          itemCount: 10,
          scrollDirection: Axis.horizontal,
          itemExtent: 70.0, //强制高度为50.0
          itemBuilder: (BuildContext context, int index) {
            return Padding(
                padding: const EdgeInsets.all(5),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CircleAvatar(
                      //头像半径
                      radius: 30,
                      //头像图片
                      backgroundImage: NetworkImage(
                          'https://pic2.zhimg.com/v2-639b49f2f6578eabddc458b84eb3c6a1.jpg'),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 5),
                      child: Text('小猫咪'),
                    )
                  ],
                ));
          }),
    );
  }
}
