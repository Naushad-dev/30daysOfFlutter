import 'package:flutter/material.dart';
import 'package:flutter30concept/screens/profile.dart';

import 'screens/listGrid.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.light(),
      title: 'Learning Flutter',
      debugShowCheckedModeBanner: false,
      home: ProfilePage(),
    );
  }
}
