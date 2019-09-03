import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(title: "RaisedButton", home: MainActivity()));

class MainActivity extends StatefulWidget {
  @override
  _MainActivityState createState() => _MainActivityState();
}

class _MainActivityState extends State {
  String msg = 'Flutter RaisedButton example';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow,
      appBar: AppBar(
        title: Text('Raised Button'),
      ),
      body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                msg,
                style: TextStyle(fontSize: 20, fontStyle: FontStyle.italic),
              ),
              widgets(),
              widgets(),
              Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,children: <Widget>[
              RaisedButton(
                child: Text("Rock & Roll"),
                onPressed: _changeText,
                color: Colors.red,
                textColor: Colors.yellow,
                padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                splashColor: Colors.grey,
              ),
              RaisedButton(
                child: Text("Rock & Roll"),
                onPressed: _changeText2,
                color: Colors.red,
                textColor: Colors.yellow,
                padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                splashColor: Colors.grey,
              )
              ],)
            ],
          ),
        ),
      ),
    );
  }

  _changeText() {
    setState(() {
      selectedWidgetMarker = WidgetMarker.graph;

    });
  }
  _changeText2() {
    setState(() {
      selectedWidgetMarker = WidgetMarker.stats;

    });
  }
}

enum WidgetMarker { graph, stats, info }

WidgetMarker selectedWidgetMarker = WidgetMarker.stats; 

Widget widgets() {
  switch (selectedWidgetMarker) {
    case WidgetMarker.graph:
      return getGraphWidget();
    case WidgetMarker.stats:
      return getStatsWidget();
    case WidgetMarker.info:
      return getInfoWidget();
  }

  return getGraphWidget();
}

Widget getGraphWidget() {
  return Container(
    height: 200,
    color: Colors.red,
  );
}

Widget getStatsWidget() {
  return Container(
    height: 300,
    color: Colors.green,
  );
}

Widget getInfoWidget() {
  return Container(
    height: 500,
    color: Colors.blue,
  );
}