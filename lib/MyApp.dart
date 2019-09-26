import 'package:flutter/material.dart';
import 'screens/MainScreen.dart';

class MyApp extends StatelessWidget {
  // This widget is the root of your application.

  static const titleText = "FlutStory BalaBuus";
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'FlutStory BalaBuus',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: MainScreen(title: titleText),
    );
  }
}