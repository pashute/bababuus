import 'package:flutter/material.dart';

/// class for homepage and state config 
class MainScreen extends StatefulWidget {
  MainScreen({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  // int _counter = 0;

  // void _incrementCounter() {
  //   setState(() {
  //     _counter++;
  //   });
  // }

  // for now
  List<String> busData = ['412 to ta','411 to ta','415 to jslm'];

  /// build every time setState called
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MainScreen object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ListView.builder(
              itemCount: busData.length,
              itemBuilder: (BuildContext ctxt, int idx) {
                return new Text(busData[idx]);
              }
            ),
            //   ]
            // ),
            // Text('data len ${busData.length}'),
          ] // column widget arr
        ),
      ),
      floatingActionButton: FloatingActionButton(
        key: UniqueKey(),
        onPressed: null, //_incrementCounter,
        tooltip: 'Refresh',
        child: Icon(Icons.refresh),
        // heroTag: 'demotag2',
      ), 
    );
  }
}
