import 'package:flutter/material.dart';


void main() => runApp(MaterialApp(title: "Maincode", home: MyApp()));





//Login Page Starts Here
class MyApp extends StatelessWidget {
  @override
  
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Welcome to Flutter',
      home: LoginScreen(context),
    );
    
    }
  }



  Widget LoginScreen(BuildContext context){
    TextStyle style = TextStyle(fontSize: 20.0, color: Colors.white);
    TextField emailField = TextField(
          obscureText: false,
          style: style,
          decoration: InputDecoration(
              contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
              hintText: "Email",
              hintStyle: style,
              fillColor: Color.fromARGB(255, 50, 50, 125),
              filled: true,
              border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(32.0))),
        );
    TextField passField = TextField(
          obscureText: true,
          style: style,
          decoration: InputDecoration(
              contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
              hintText: "Password",
              hintStyle: style,
              fillColor: Color.fromARGB(255, 50, 50, 125),
              filled: true,
              border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(32.0))),
        );
    Material loginButton = Material(
          //elevation: 1000.0,
          borderRadius: BorderRadius.circular(30.0),
          child: FlatButton(
            color: Color.fromARGB(100, 0, 0, 125),
            padding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
            onPressed: () 
            {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => MainActivity()),
                );
            },
            child: Text("Login",
              textAlign: TextAlign.center,
              style: style.copyWith(color: Colors.white, fontWeight: FontWeight.bold),
            ),
          ),
          );
    return Scaffold(
        backgroundColor: Color.fromARGB(255, 15, 15, 40),
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 50, 50, 125),
          title: Column(
            children: <Widget>[
              Text('SmarterClass', style: style.copyWith(fontSize: 25)),
              Text('by IRIS Technologies', style: style.copyWith(fontSize: 12)),
              ]
              )
        ),
        body: Center(
          child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Image.asset(
                        "assets/logo.png",
                        scale: 9,
                      ),
            SizedBox(height: 45.0),
            Container(width: 330,
            child: emailField
        ),
            SizedBox(height: 25.0),
            Container(width: 330,
            child: passField
            ),
            SizedBox(height: 35.0),
            Container(width: 180,
            child: loginButton
            ),
            SizedBox(height: 30.0)
          ],
        ),
      )
      );
  } // getLoginPage end









//Main page Starts Here

class MainActivity extends StatefulWidget {
  @override
  _MainActivityState createState() => _MainActivityState();
}

class _MainActivityState extends State {
  String msg = 'Flutter Rai';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow,
      appBar: AppBar(
        title: Text('Raised '),
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
                child: Text("Rock "),
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
