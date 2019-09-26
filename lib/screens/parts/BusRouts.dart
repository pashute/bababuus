import 'dart:developer';
import 'package:flutter/material.dart';


// BusRouts screen part
class BusRouts extends StatelessWidget{

  final List<String> busData;

  // ctor with mandatory data, stored in private data list
  BusRouts({this.busData}){
    log('busData.length is ${this.busData.length} of type int');
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 480.0,
      // width: 310.0,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Expanded(
            child: ListView.builder(
              shrinkWrap: true,
              itemCount: this.busData.length,
              itemBuilder: (BuildContext ctxt, int idx) {
                return ListTile(
                  title: Text('${this.busData[idx]}')
                );
              } // ListView itemBuilder
            ),
          ),
          Text('data len ${this.busData.length}'),
        ]
      )
    );
  } // build()
} // class
