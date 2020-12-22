import 'package:flutter/material.dart';

class SearchBar extends StatefulWidget {
  SearchBar({Key key}) : super(key: key);

  @override
  _SearchBarState createState() => _SearchBarState();
}

class _SearchBarState extends State<SearchBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      margin: const EdgeInsets.only(top: 5),
      child: TextField(
        textAlign: TextAlign.center,
        textAlignVertical: TextAlignVertical.center,
        style: TextStyle(fontSize: 16),
        cursorWidth: 3.0,
        decoration: InputDecoration(
            hintText: '输入搜索关键词',
            fillColor: Colors.white,
            filled: true,
            contentPadding: const EdgeInsets.symmetric(vertical: 10.0),
            border: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(100)),
                borderSide: BorderSide.none)),
      ),
    );
  }
}
