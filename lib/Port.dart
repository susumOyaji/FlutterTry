
import 'package:flutter/material.dart';


class PortPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: PortPageDisp(),
    );
  }
}


class PortPageDisp extends StatefulWidget {
  PortPageDisp({Key key}) : super(key: key);
  @override
  PortPageState createState() => new PortPageState();
}


class PortPageState extends State<PortPageDisp> {
 @override
  Widget build(BuildContext context) {
    var portcontainer = Container(
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
                     Text(
                        "  Nikkei225",
                        style: TextStyle(fontSize: 12.0, color: Colors.red),
                      ),
                    ],
                  ), // Image.asset('images/pic1.jpg'),
                ),
              ),
              /*
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
              ),*/
            ],
          ),
        ],
      ),
    );

   return MaterialApp(
      title: 'Flutter Demo',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Top Lakes'),
        ),
        body: ListView(
          children: [
            
            portcontainer,
            //titleSection,
            //buttonSection,
            //textSection,
          ],
        ),
      ),
    );

    
  }
}