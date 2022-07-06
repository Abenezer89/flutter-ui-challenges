// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import 'package:ui_challenges_100days/day%203/day3.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // theme: ThemeData.dark(),
      // themeMode: ThemeMode.dark,
      debugShowCheckedModeBanner: false,
      home: Day3(),
    );
  }
}
