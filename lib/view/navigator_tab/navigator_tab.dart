import 'package:MovieApp/view/home/home_page.dart';
import 'package:MovieApp/view/user/user_page.dart';
import 'package:MovieApp/view/video/video_page.dart';
import 'package:flutter/material.dart';

class NavigatorTab extends StatefulWidget {
  NavigatorTab({Key key}) : super(key: key);

  @override
  _NavigatorTabState createState() => _NavigatorTabState();
}

class _NavigatorTabState extends State<NavigatorTab> {
  int _currentIndex = 0; // 默认选中tab
  final PageController _controller = PageController(initialPage: 0);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _controller,
        children: <Widget>[HomePage(), VideoPage(), UserPage()],
        onPageChanged: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: '首页'),
          BottomNavigationBarItem(icon: Icon(Icons.video_call), label: '视频'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: '我的')
        ],
        onTap: (index) {
          _controller.jumpToPage(index);
          setState(() {
            _currentIndex = index;
          });
        },
      ),
    );
  }
}
