import 'package:flutter/material.dart';
import 'package:inshorts/screens/screen_changer.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Inshorts',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: ScreenChanger(),
    );
  }
}
