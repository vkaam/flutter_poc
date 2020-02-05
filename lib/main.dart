// Copyright 2018 Google LLC
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//      http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

import 'package:flutter/foundation.dart'
    show debugDefaultTargetPlatformOverride;
import 'package:flutter/material.dart';
import 'package:poc_flutter/demo_h.dart';
import 'package:shared/env.dart';

import 'demo.dart';

void main() {
  // See https://github.com/flutter/flutter/wiki/Desktop-shells#target-platform-override
  debugDefaultTargetPlatformOverride = TargetPlatform.fuchsia;

  runApp(new MyApp());
}

class MyApp extends StatelessWidget {
  static String _pkg = "constellations_list";
  static String get pkg => Env.getPackage(_pkg);
  static String get bundle => Env.getBundle(_pkg);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.grey,
        // See https://github.com/flutter/flutter/wiki/Desktop-shells#fonts
        fontFamily: 'Roboto',
      ),
      home: TravelCardDemo(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
          // child: Column(
          //   mainAxisAlignment: MainAxisAlignment.center,
          //   children: <Widget>[
          //     Container(
          //         child: FlatButton(
          //       onPressed: () {
          //         Navigator.push(
          //           context,
          //           MaterialPageRoute(builder: (context) => basketballptr.App()),
          //         );
          //       },
          //       child: Text('basketballptr'),
          //     )),
          //     Container(
          //         child: FlatButton(
          //       onPressed: () {
          //         Navigator.push(
          //           context,
          //           MaterialPageRoute(builder: (context) => bubbletabbar.App()),
          //         );
          //       },
          //       child: Text('bubbletabbar'),
          //     )),
          //     Container(
          //         child: FlatButton(
          //       onPressed: () {
          //         Navigator.push(
          //           context,
          //           MaterialPageRoute(
          //               builder: (context) => constellationslist.App()),
          //         );
          //       },
          //       child: Text('constellationslist'),
          //     )),
          //     Container(
          //         child: FlatButton(
          //       onPressed: () {
          //         Navigator.push(
          //           context,
          //           MaterialPageRoute(
          //               builder: (context) => darkinktransition.App()),
          //         );
          //       },
          //       child: Text('darkinktransition'),
          //     )),
          //     Container(
          //         child: FlatButton(
          //       onPressed: () {
          //         Navigator.push(
          //           context,
          //           MaterialPageRoute(builder: (context) => dogslider.App()),
          //         );
          //       },
          //       child: Text('dogslider'),
          //     )),
          //     Container(
          //         child: FlatButton(
          //       onPressed: () {
          //         Navigator.push(
          //           context,
          //           MaterialPageRoute(
          //               builder: (context) => drinkrewardslist.App()),
          //         );
          //       },
          //       child: Text('drinkrewardslist'),
          //     )),
          //     Container(
          //         child: FlatButton(
          //       onPressed: () {
          //         Navigator.push(
          //           context,
          //           MaterialPageRoute(builder: (context) => fluidnavbar.App()),
          //         );
          //       },
          //       child: Text('fluidnavbar'),
          //     )),
          //     Container(
          //         child: FlatButton(
          //       onPressed: () {
          //         Navigator.push(
          //           context,
          //           MaterialPageRoute(builder: (context) => gooeyedge.App()),
          //         );
          //       },
          //       child: Text('gooeyedge'),
          //     )),
          //     Container(
          //         child: FlatButton(
          //       onPressed: () {
          //         Navigator.push(
          //           context,
          //           MaterialPageRoute(builder: (context) => indie3d.App()),
          //         );
          //       },
          //       child: Text('indie3d'),
          //     )),
          //     Container(
          //         child: FlatButton(
          //       onPressed: () {
          //         Navigator.push(
          //           context,
          //           MaterialPageRoute(
          //               builder: (context) => parallaxtravelcardshero.App()),
          //         );
          //       },
          //       child: Text('parallaxtravelcardshero'),
          //     )),
          //     Container(
          //         child: FlatButton(
          //       onPressed: () {
          //         Navigator.push(
          //           context,
          //           MaterialPageRoute(
          //               builder: (context) => parallaxtravelcardslist.App()),
          //         );
          //       },
          //       child: Text('parallaxtravelcardslist'),
          //     )),
          //     Container(
          //         child: FlatButton(
          //       onPressed: () {
          //         Navigator.push(
          //           context,
          //           MaterialPageRoute(builder: (context) => particleswipe.App()),
          //         );
          //       },
          //       child: Text('particleswipe'),
          //     )),
          //     Container(
          //         child: FlatButton(
          //       onPressed: () {
          //         Navigator.push(
          //           context,
          //           MaterialPageRoute(
          //               builder: (context) => productdetailzoom.App()),
          //         );
          //       },
          //       child: Text('productdetailzoom'),
          //     )),
          //     Container(
          //         child: FlatButton(
          //       onPressed: () {
          //         Navigator.push(
          //           context,
          //           MaterialPageRoute(builder: (context) => sparkleparty.App()),
          //         );
          //       },
          //       child: Text('sparkleparty'),
          //     )),
          //     Container(
          //         child: FlatButton(
          //       onPressed: () {
          //         Navigator.push(
          //           context,
          //           MaterialPageRoute(builder: (context) => ticketfold.App()),
          //         );
          //       },
          //       child: Text('ticket fold'),
          //     )),
          //   ],
          // ),
          ),
    );
  }
}
