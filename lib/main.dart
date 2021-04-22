import 'package:calendar_project/routes.dart';
import 'package:calendar_project/screens/home/home_screen.dart';
import 'package:calendar_project/theme.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Calendar',
      theme: theme(),
      home: HomeScreen(),
      initialRoute: HomeScreen.routeName,
      routes: routes,
    );
  }
}
