import 'package:english_words/english_words.dart';
import 'package:flutter/material.dart';
class MainScreen extends StatelessWidget{
  
  final Color color;

  MainScreen(this.color);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: color,
      body: Stack(
        
        children: <Widget>[
          Container
          (
              width: MediaQuery.of(context).size.width,
              margin: EdgeInsets.fromLTRB(35, 15, 35, 360),
              decoration: BoxDecoration(
                color: Colors.cyan,
                borderRadius: BorderRadius.all(Radius.circular(25)))
          ),
          Container(
              width: MediaQuery.of(context).size.width,
              margin: EdgeInsets.fromLTRB(35, 375, 35, 10),
                  decoration: BoxDecoration(
                      color: Colors.cyan,
                      borderRadius: BorderRadius.all(Radius.circular(25)))
          )
        ]
        ));
      
  }}