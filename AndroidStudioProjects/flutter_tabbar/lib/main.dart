import 'package:hive/hive.dart';
import 'package:flutter/material.dart';
import 'hive.dart';
import 'package:flutter_tabbar/app/homePage.dart';
import 'package:flutter_tabbar/others/constants.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await setupHive();

  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void dispose() async {
    await closeHive();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      title: 'Hive Example',
      home: FutureBuilder(
        future: Hive.openBox(Constants.boxRehber),
        builder: (BuildContext context, AsyncSnapshot<Box<dynamic>> snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            if (snapshot.hasError)
              return Text(snapshot.error.toString());
            else
              return AnaSayfa();
          } else
            return Scaffold();
        },
      ),
    );
  }
}