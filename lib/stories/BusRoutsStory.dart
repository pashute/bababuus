import 'package:flutter/material.dart';
import 'package:storyboard/storyboard.dart';
import '../screens/parts/BusRouts.dart';

class BusRoutsStory extends Story {

  @override
  List<Widget> get storyContent {
    const List<String> busData = ['412 to ta','411 to ta','415 to jslm'];  
    return [Container(
      height: 500.0, 
      width: 330.0,
      child: BusRouts(busData: busData)
    )];
  }
}