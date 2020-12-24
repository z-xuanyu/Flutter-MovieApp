import 'package:MovieApp/view/navigator_tab/navigator_tab.dart';
import 'package:flutter/material.dart';
import 'package:flutter/physics.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RefreshConfiguration(
        headerBuilder: () => WaterDropMaterialHeader(
              backgroundColor: Theme.of(context).primaryColor,
            ),
        footerBuilder: () => ClassicFooter(),
        footerTriggerDistance: 30,
        headerTriggerDistance: 80.0,
        springDescription:
            SpringDescription(damping: 16, stiffness: 170, mass: 1.9),
        maxOverScrollExtent: 100,
        maxUnderScrollExtent: 0,
        enableScrollWhenRefreshCompleted: true,
        enableLoadingWhenFailed: true,
        hideFooterWhenNotFull: false,
        enableBallisticLoad: true,
        child: MaterialApp(
            theme: ThemeData(
                primaryColor: Colors.pinkAccent,
                visualDensity: VisualDensity.adaptivePlatformDensity),
            title: 'Movie App',
            home: NavigatorTab()));
  }
}
