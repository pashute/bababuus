import 'package:flutter/material.dart';

import 'package:storyboard/storyboard.dart';
import 'stories/BusRoutsStory.dart';

import './MyApp.dart';

const bool isStory = true;

void main(){
  if (isStory) 
    return runApp(new StoryboardApp([
      new BusRoutsStory()
    ])); 
  else
    return runApp(MyApp());
}



