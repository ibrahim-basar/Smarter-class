// Copyright 2018 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Welcome to Flutter',
      home: Scaffold(
        backgroundColor: Color.fromARGB(255, 15, 15, 40),
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 50, 50, 125),
          title: Column(
            children: <Widget>[
              Text('SmarterClass', style: TextStyle(fontSize: 25, color: Colors.white)),
              Text('by IRIS Technologies', style: TextStyle(fontSize: 12, color: Colors.white)),
            ],
          ),
        ),
        body: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
            GradesDisplay("Turkish", 75, "Maths", 86, "English", 47, "History", 93, "Geography", 50, "IT", 13),
            SizedBox(height: 430)
            ]),
        ),
      ),
    );
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
          Text('Grade Averages', style: TextStyle(color: Colors.white, fontSize: 28, fontWeight: FontWeight.bold)),
          SizedBox(height: 5),
          Text('Tap on a subject for more information', style: TextStyle(color: Colors.white, fontSize: 15, fontWeight: FontWeight.w100)),
          SizedBox(height: 10),
          Container(height: 3, width: 300, decoration: BoxDecoration(color: Colors.white)),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              GestureDetector(
                onTap: () => print("Subject 1"),
              child: Container(width: 110, height: 70,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text(subj1, style: gradeStyle, textAlign: TextAlign.center),
                  SizedBox(height: 5),
                  Text(grade1.toString(), style: gradeStyle, textAlign: TextAlign.center)
                ],
              )
              )
              ),
              Container(color: Colors.white, height: 50, width: 1),
              GestureDetector(onTap: () => print("Subject 2"),
              child: Container(width: 110, height: 70,
                child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text(subj2, style: gradeStyle, textAlign: TextAlign.center),
                  SizedBox(height: 5),
                  Text(grade2.toString(), style: gradeStyle, textAlign: TextAlign.center)
                ],
              )
              )
              ),
              Container(color: Colors.white, height: 50, width: 1),
              GestureDetector(onTap: () => print("Subject 3"),
              child: Container(width: 110, height: 70,
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
              GestureDetector(onTap: () => print("Subject 4"),
              child: Container(width: 110, height: 70,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text(subj4, style: gradeStyle),
                  SizedBox(height: 5),
                  Text(grade4.toString(), style: gradeStyle)
                ],
              )
              )
              ),
              Container(color: Colors.white, height: 50, width: 1),
              GestureDetector(onTap: () => print("Subject 5"),
              child: Container(width: 110, height: 70,
                child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text(subj5, style: gradeStyle, textAlign: TextAlign.center),
                  SizedBox(height: 5),
                  Text(grade5.toString(), style: gradeStyle, textAlign: TextAlign.center)
                ],
              )
              )
              ),
              Container(color: Colors.white, height: 50, width: 1),
              GestureDetector(onTap: () => print("Subject 6"),
              child: Container(width: 110, height: 70,
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
              )
            ],
          ),
          SizedBox(height: 20)
        ],
      )
    );
  }
}