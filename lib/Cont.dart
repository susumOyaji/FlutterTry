// Copyright 2017 The Chromium Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';

// Uncomment lines 7 and 10 to view the visual layout at runtime.
//import 'package:flutter/rendering.dart' show debugPaintSizeEnabled;
/*
void main() {
  //debugPaintSizeEnabled = true;
  runApp(MyApp());
}
*/
class MyAppCont extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
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
  @override
  Widget build(BuildContext context) {
    var container = Container(
      decoration: BoxDecoration(
        color: Colors.black26,
      ),
      child: Column(
        children: [
          Row(
            //1行目
            children: [
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.orangeAccent,
                    //border: Border.all(width: 2.0, color: Colors.black38), //枠線
                    borderRadius:
                        const BorderRadius.all(const Radius.circular(2.0)),
                  ),

                  margin: const EdgeInsets.fromLTRB(
                      4.0, 5.0, 0.0, 0.0), //.all(4.0),
                  padding: new EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Image.asset(
                        'images/japan2.png',
                        height: 20.0,
                        fit: BoxFit.cover,
                      ),
                      Text("  Nikkei225"),
                    ],
                  ), // Image.asset('images/pic1.jpg'),
                ),
              ),
              Expanded(
                //1行2桁目
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.orangeAccent,
                    //border: Border.all(width: 2.0, color: Colors.black38),
                    borderRadius:
                        const BorderRadius.all(const Radius.circular(2.0)),
                  ),
                  margin:
                      const EdgeInsets.fromLTRB(4.0, 5.0, 0.0, 0.0), //all(4.0),
                  padding: new EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Image.asset(
                        'images/usa3.png',
                        height: 20.0,
                        fit: BoxFit.cover,
                      ),
                      Text("  NewYork"),
                    ],
                  ), // Text("1行2桁目"), //Image.asset('images/pic2.jpg'),
                ),
              ),
            ],
          ),
          Row(
            children: [
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.red,
                    border: Border.all(width: 2.0, color: Colors.white),
                    borderRadius:
                        const BorderRadius.all(const Radius.circular(2.0)),
                  ),
                  margin:
                      const EdgeInsets.fromLTRB(4.0, 0.0, 0.0, 0.0), //all(4.0),
                  padding: new EdgeInsets.all(8.0),
                  child: Text("2行目" +
                      "12345.0" +
                      " +50" +
                      " 5.0%"), //Image.asset('images/pic3.jpg'),
                ),
              ),
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.green,
                    border: Border.all(width: 2.0, color: Colors.white),
                    borderRadius:
                        const BorderRadius.all(const Radius.circular(2.0)),
                  ),
                  margin: const EdgeInsets.fromLTRB(
                      4.0, 0.0, 0.0, 0.0), //.all(4.0),
                  padding: new EdgeInsets.all(8.0),
                  child: Text("2行目2桁12345"),
                ),
              ),
            ],
          ),
        ],
      ),
    );

    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: container,
      ),
    );
  }
}
