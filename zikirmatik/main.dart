import 'package:flutter/material.dart';
import 'MainScreen/appBar1.dart';

void main() => runApp(MaterialApp(title: "Maincode", home: MyApp()));

TextEditingController emailController = new TextEditingController();
TextEditingController passwordcontroller = new TextEditingController();

var mail = "";
var password ="";
String eror = "Login";



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
          controller: emailController,
          style: style,
          decoration: InputDecoration(
              contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
              hintText: "kullanıcı adı",
              hintStyle: style,
              fillColor: Color.fromARGB(255, 50, 50, 125),
              filled: true,
              border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(32.0))),
        );
    TextField passField = TextField(
          obscureText: true,
          style: style,
          controller: passwordcontroller,
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
            {  mail = emailController.text;
                password = passwordcontroller.text;
              if(mail=="admin1"&&password=="1234"||mail=="admin"&&password=="1234"||mail=="abbas"&&password=="savage"){
                  Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Home()),
                );
              } else {
                eror = "hatalı kullanıcı adı";
                }
            },
            child: Text(eror,
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
              widgets(true),
              widgets(true),
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
      selectedWidgetMarker = WidgetMarker.stats;

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

Widget widgets(bool x) {
  switch (selectedWidgetMarker) {
    case WidgetMarker.graph:
      return getGraphWidget();
    case WidgetMarker.stats:
      return getStatsWidget(x);
    case WidgetMarker.info:
      return getInfoWidget("TR 1S", 75, "MT 2", 86, "EN 2S", 47, "HS 3", 93, "GEO 2", 50, "IT", 13);
  }

  return getGraphWidget();
}

Widget getGraphWidget() {
  return Container(
    height: 200,
    color: Colors.red,
  );
}

Widget getStatsWidget(bool x) {
  if(x){
  if(mail=="admin"){
  return Container(
    height: 300,
    color: Colors.blue,
  );}
  else {
    return Container(
    height: 300,
    color: Colors.red,
  );
  }}
  else{
    return Container(
    height: 300,
    color: Colors.yellow,);
  }
}

Widget getInfoWidget(String subj1, int grade1, String subj2, int grade2, String subj3, int grade3, String subj4, int grade4, String subj5, int grade5, String subj6, int grade6) {
  return GradesDisplay(subj1, grade1, subj2, grade2, subj3, grade3, subj4, grade4, subj5, grade5, subj6, grade6);
}

Widget GradesDisplay(String subj1, int grade1, String subj2, int grade2, String subj3, int grade3, String subj4, int grade4, String subj5, int grade5, String subj6, int grade6){
    TextStyle gradeStyle = TextStyle(color: Colors.white, fontSize: 17);
    return Container(
      height: 300,
      width: 360,
      decoration: BoxDecoration(color: Color.fromARGB(255, 50, 50, 125), borderRadius: BorderRadius.circular(15)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          SizedBox(height: 20),
          Text('Grades', style: TextStyle(color: Colors.white, fontSize: 28, fontWeight: FontWeight.bold)),
          SizedBox(height: 20),
          Container(height: 3, width: 300, decoration: BoxDecoration(color: Colors.white)),
          SizedBox(height: 30),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Container(width: 110, height: 70,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text(subj1, style: gradeStyle, textAlign: TextAlign.center),
                  SizedBox(height: 5),
                  Text(grade1.toString(), style: gradeStyle, textAlign: TextAlign.center)
                ],
              )
              ),
              Container(color: Colors.white, height: 50, width: 1),
              Container(width: 110, height: 70,
                child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text(subj2, style: gradeStyle, textAlign: TextAlign.center),
                  SizedBox(height: 5),
                  Text(grade2.toString(), style: gradeStyle, textAlign: TextAlign.center)
                ],
              )
              ),
              Container(color: Colors.white, height: 50, width: 1),
              Container(width: 110, height: 70,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text(subj3, style: gradeStyle),
                  SizedBox(height: 5),
                  Text(grade3.toString(), style: gradeStyle)
                ],
              )
              )
            ],
          ),
          SizedBox(height: 15),
          Container(color: Colors.white, width: 300, height: 1),
          SizedBox(height: 15),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Container(width: 110, height: 70,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text(subj4, style: gradeStyle),
                  SizedBox(height: 5),
                  Text(grade4.toString(), style: gradeStyle)
                ],
              )
              ),
              Container(color: Colors.white, height: 50, width: 1),
              Container(width: 110,
                child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text(subj5, style: gradeStyle, textAlign: TextAlign.center),
                  SizedBox(height: 5),
                  Text(grade5.toString(), style: gradeStyle, textAlign: TextAlign.center)
                ],
              )
              ),
              Container(color: Colors.white, height: 50, width: 1),
              Container(width: 110, height: 70,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text(subj6, style: gradeStyle, textAlign: TextAlign.center),
                  SizedBox(height: 5),
                  Text(grade6.toString(), style: gradeStyle, textAlign: TextAlign.center)
                ],
              )
              )
            ],
          ),
          SizedBox(height: 20)
        ],
      )
    );
  }


