import 'package:flutter/material.dart';
import 'package:flutter_video_trimmer/pages/home.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutrim',
      theme: ThemeData.dark(),
      home: Home(),
    );
  }
}