import'package:flutter/material.dart';
import 'dart:async';


void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          FloatingActionButton(
              child: Icon(Icons.camera),
              onPressed: (){})
        ],
      ),
    );
  }
}
