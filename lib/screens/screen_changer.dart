import 'package:flutter/material.dart';
import 'package:inshorts/screens/feed.dart';
import 'language_selection.dart';
import 'home_screen.dart';
import 'package:swipe/swipe.dart';

class ScreenChanger extends StatefulWidget {
  @override
  _ScreenChangerState createState() => _ScreenChangerState();
}

final pages = [
  LanguageSelection(),
  HomeScreen(),
];

class _ScreenChangerState extends State<ScreenChanger> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onPanUpdate: (details) {
        if (details.delta.dy < -8) {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (BuildContext context) => MyFeed(),
            ),
          );
        }
      },
      child: LanguageSelection(),
    );
  }
}
