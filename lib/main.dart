import 'package:MovieApp/view/navigator_tab/navigator_tab.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(
            primaryColor: Colors.pinkAccent,
            visualDensity: VisualDensity.adaptivePlatformDensity),
        title: 'Movie App',
        home: NavigatorTab());
  }
}
