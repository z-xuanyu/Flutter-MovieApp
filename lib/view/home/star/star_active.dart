import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class StarActive extends StatefulWidget {
  StarActive({Key key}) : super(key: key);

  @override
  _StarActiveState createState() => _StarActiveState();
}

class _StarActiveState extends State<StarActive> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ListTile(
          contentPadding: EdgeInsets.symmetric(horizontal: 1.0),
          leading: Icon(
            Icons.star_half,
            color: Colors.yellow[800],
          ),
          title: Text('明星动态'),
        ),
        // 明星动态瀑布流信息
        StaggeredGridView.countBuilder(
          shrinkWrap: true,
          crossAxisCount: 4,
          itemCount: 20,
          primary: false, // 解决滚动嵌套错误问题
          itemBuilder: (BuildContext context, int index) => new Container(
              color: Colors.green,
              child: new Center(
                child: new CircleAvatar(
                  backgroundColor: Colors.white,
                  child: new Text('$index'),
                ),
              )),
          staggeredTileBuilder: (int index) =>
              new StaggeredTile.count(2, index.isEven ? 2 : 1),
          mainAxisSpacing: 4.0,
          crossAxisSpacing: 4.0,
        )
      ],
    );
  }
}
