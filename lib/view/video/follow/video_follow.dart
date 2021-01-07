import 'package:MovieApp/common/video_card.dart';
import 'package:flutter/material.dart';

class VideoFollow extends StatefulWidget {
  VideoFollow({Key key}) : super(key: key);

  @override
  _VideoFollowState createState() => _VideoFollowState();
}

class _VideoFollowState extends State<VideoFollow> {
  @override
  Widget build(BuildContext context) {
    return Column(children: [
      SizedBox(
        height: 80,
      ),
      ListView(
        shrinkWrap: true,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 16),
            child: Text('你可能感兴趣的UP主'),
          ),
          Divider(
            indent: 16,
          ),
          ListTile(
              leading: CircleAvatar(
                //头像半径
                radius: 20,
                //头像图片
                backgroundImage: NetworkImage(
                    'https://pic2.zhimg.com/v2-639b49f2f6578eabddc458b84eb3c6a1.jpg'),
              ),
              title: Text('皇家族影视'),
              trailing: SizedBox(
                height: 30,
                child: OutlineButton.icon(
                  label: Text('关注'),
                  icon: Icon(
                    Icons.add,
                    size: 12,
                  ),
                  textColor: Theme.of(context).primaryColor,
                  highlightedBorderColor: Theme.of(context).primaryColor,
                  splashColor: Theme.of(context).primaryColor,
                  shape: StadiumBorder(),
                  onPressed: () {},
                ),
              )),
          Divider(
            indent: 16,
          ),
          ListTile(
              leading: CircleAvatar(
                //头像半径
                radius: 20,
                //头像图片
                backgroundImage: NetworkImage(
                    'https://pic2.zhimg.com/v2-639b49f2f6578eabddc458b84eb3c6a1.jpg'),
              ),
              title: Text('皇家族影视'),
              trailing: SizedBox(
                height: 30,
                child: OutlineButton.icon(
                  label: Text('关注'),
                  icon: Icon(
                    Icons.add,
                    size: 12,
                  ),
                  textColor: Theme.of(context).primaryColor,
                  highlightedBorderColor: Theme.of(context).primaryColor,
                  splashColor: Theme.of(context).primaryColor,
                  shape: StadiumBorder(),
                  onPressed: () {},
                ),
              )),
          Divider(
            indent: 16,
          ),
          ListTile(
              leading: CircleAvatar(
                //头像半径
                radius: 20,
                //头像图片
                backgroundImage: NetworkImage(
                    'https://pic2.zhimg.com/v2-639b49f2f6578eabddc458b84eb3c6a1.jpg'),
              ),
              title: Text('皇家族影视'),
              trailing: SizedBox(
                height: 30,
                child: OutlineButton.icon(
                  label: Text('关注'),
                  icon: Icon(
                    Icons.add,
                    size: 12,
                  ),
                  textColor: Theme.of(context).primaryColor,
                  highlightedBorderColor: Theme.of(context).primaryColor,
                  splashColor: Theme.of(context).primaryColor,
                  shape: StadiumBorder(),
                  onPressed: () {},
                ),
              )),
          Divider(
            indent: 16,
          ),
          // 换一换
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(
                  icon: Icon(
                    Icons.autorenew,
                    color: Theme.of(context).primaryColor,
                  ),
                  onPressed: null),
              Text(
                '换一换',
                style: TextStyle(color: Theme.of(context).primaryColor),
              )
            ],
          ),
          // 视频卡片
          VideoCard()
        ],
      ),
    ]);
  }
}
