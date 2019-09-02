// Copyright 2018 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  static TextStyle style = TextStyle(fontSize: 20.0, color: Colors.white);
  
  static TextField emailField = TextField(
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

  static TextField passField = TextField(
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

  static Material loginButton = Material(
          elevation: 100.0,
          borderRadius: BorderRadius.circular(30.0),
          child: MaterialButton(
            color: Color.fromARGB(100, 0, 0, 125),
            padding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
            onPressed: () {},
            child: Text("Login",
                textAlign: TextAlign.center,
                style: style.copyWith(
                    color: Colors.white, fontWeight: FontWeight.bold)),
          ),
        );

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
      ),
    );
  }
}