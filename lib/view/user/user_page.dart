import 'package:flutter/material.dart';

class UserPage extends StatelessWidget {
  const UserPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 15),
              child: Icon(Icons.crop_free),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 10),
              child: Icon(Icons.settings),
            ),
          ],
        ),
        body: Column(
          children: <Widget>[
            // 头像登录
            Container(
              margin: const EdgeInsets.only(bottom: 10),
              color: Colors.white,
              padding: const EdgeInsets.all(16),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  CircleAvatar(
                    radius: 30,
                    backgroundColor: Color.fromRGBO(0, 0, 0, 0.6),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 20),
                    child: SizedBox(
                      width: 80,
                      height: 25,
                      child: OutlineButton(
                        onPressed: () {},
                        child: Text('登录'),
                      ),
                    ),
                  )
                ],
              ),
            ),
            // 我的追剧
            Container(
              margin: const EdgeInsets.only(bottom: 10),
              color: Colors.white,
              child: ListTile(
                  leading: Icon(
                    Icons.live_tv,
                    color: Colors.pinkAccent,
                  ),
                  title: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('我的追剧'),
                      Text(
                        '登录自动同步追剧记录',
                        style: TextStyle(fontSize: 12, color: Colors.grey),
                      )
                    ],
                  ),
                  trailing: Icon(Icons.keyboard_arrow_right)),
            ),
            // 离线缓存
            Container(
              margin: const EdgeInsets.only(bottom: 10),
              color: Colors.white,
              child: ListTile(
                  leading: Icon(
                    Icons.file_download,
                    color: Colors.pinkAccent,
                  ),
                  title: Text('离线缓存'),
                  trailing: Icon(Icons.keyboard_arrow_right)),
            ),
            // 会员中心导航

            Container(
              color: Colors.white,
              child: GridView.count(
                shrinkWrap: true, // grid嵌套错误问题
                crossAxisCount: 4,
                padding: const EdgeInsets.only(top: 5, bottom: 5),
                childAspectRatio: 1.6,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.access_alarms,
                        color: Colors.pinkAccent,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 5),
                        child: Text('历史记录'),
                      )
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.grade,
                        color: Colors.yellow,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 5),
                        child: Text('我的收藏'),
                      )
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.assignment,
                        color: Colors.greenAccent,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 5),
                        child: Text('我的消息'),
                      )
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.flag,
                        color: Colors.pinkAccent,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 5),
                        child: Text('任务中心'),
                      )
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.near_me,
                        color: Colors.blueAccent,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 5),
                        child: Text('视频投稿'),
                      )
                    ],
                  )
                ],
              ),
            )
          ],
        ),
        backgroundColor: Color.fromRGBO(0, 0, 0, 0.05));
  }
}
