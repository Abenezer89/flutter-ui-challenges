// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:ui_challenges_100days/day%202/day2.dart';
import 'package:ui_challenges_100days/day1/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      themeMode: ThemeMode.dark,
      debugShowCheckedModeBanner: false,
      home: DayTwo(),
    );
  }
}
