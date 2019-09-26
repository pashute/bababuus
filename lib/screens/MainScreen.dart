import 'package:flutter/material.dart';
import 'parts/BusRouts.dart';

/// class for homepage and state config 
class MainScreen extends StatefulWidget {

  final String title;
  final List<String> busData;

  // ctor with parameters
  MainScreen({Key key, this.title, this.busData}) : super(key: key);
  
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {

  /// build every time setState called
  @override
  Widget build(BuildContext context) {
    var scaffold = Scaffold(
      appBar: AppBar(
        title: Row(
          children: <Widget>[
            Icon(Icons.airport_shuttle),
            Text(' '),
            Text(widget.title), // text from MainScreen creation
          ]
        ),
      ),
      body: BusRouts(busData: widget.busData),
      floatingActionButton: FloatingActionButton(
        key: UniqueKey(),
        onPressed: null, //_incrementCounter,
        tooltip: 'Refresh',
        child: Icon(Icons.refresh),
        // heroTag: 'demotag2',
      ), 
    );
    return scaffold;
  }
}
