import 'package:flutter/material.dart';
import 'main.dart';
class MainScreen extends StatelessWidget{
  
  final Color color;

  MainScreen(this.color);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: color,
      body: Stack(
        
        children: <Widget>[
          
          GradesDisplay("TR 1S", 75, "MT 2", 86, "EN 2S", 47, "HS 3", 93, "GEO 2", 50, "IT", 13),
          Container(
              width: MediaQuery.of(context).size.width,
              margin: EdgeInsets.fromLTRB(35, 375, 35, 10),
              child:widgets(true),
                  decoration: BoxDecoration(
                      color: Colors.cyan,
                      borderRadius: BorderRadius.all(Radius.circular(25)))
          )
          
        ]
        ));
      
}
}

class Abbas extends StatelessWidget{
  
  final Color color;

  Abbas(this.color);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: color,
      body: Stack(
        
        children: <Widget>[
          
          Container(
              width: MediaQuery.of(context).size.width,
              margin: EdgeInsets.fromLTRB(35, 375, 35, 10),
              child:Text("merhabalar",textAlign:TextAlign.center),
                  decoration: BoxDecoration(
                      color: Colors.cyan,
                      borderRadius: BorderRadius.all(Radius.circular(25)))
          ),
          Container(
              width: MediaQuery.of(context).size.width,
              margin: EdgeInsets.fromLTRB(35, 375, 35, 10),
              child:widgets(false),
                  decoration: BoxDecoration(
                      color: Colors.cyan,
                      borderRadius: BorderRadius.all(Radius.circular(25)))
          )
          
        ]
        ));
      
}
}
