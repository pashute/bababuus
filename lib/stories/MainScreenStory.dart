import 'package:flutter/material.dart';
import 'package:flutstories/screens/MainScreen.dart';
import 'package:storyboard/storyboard.dart';

class MainScreenStory extends Story {

  @override
  List<Widget> get storyContent {
    return [new MainScreen()];
  }

}