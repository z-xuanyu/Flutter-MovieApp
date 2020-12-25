import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:fijkplayer/fijkplayer.dart';

class VideoPage extends StatefulWidget {
  VideoPage({Key key}) : super(key: key);

  @override
  _VideoPageState createState() => _VideoPageState();
}

class _VideoPageState extends State<VideoPage> {
  final FijkPlayer player = FijkPlayer();

  @override
  void initState() {
    super.initState();
    player.setDataSource(
        "https://tjc-download.weiyun.com/ftn_handler/05472e2b0bb007b617e69532b05d23a1e92b141354ad6fc4346ba77c6264ecd6/123jx.mp4",
        autoPlay: false);
  }

  @override
  void dispose() {
    super.dispose();
    player.release();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
            child: FijkView(
          player: player,
          fit: FijkFit.fitHeight,
          fsFit: FijkFit.fitHeight,
        )),
        Positioned(
            top: MediaQueryData.fromWindow(window).padding.top + 10, // 获取状态栏高度
            left: 180,
            child: Center(
              child: Text(
                '推荐',
                style: TextStyle(fontSize: 20, color: Colors.white),
              ),
            ))
      ],
    );
  }
}
