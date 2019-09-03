import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:hardcore/placeholderwidget.dart';
import 'DummyScreen.dart';
import 'package:english_words/english_words.dart';


class Home extends StatefulWidget{
  @override 
  State<StatefulWidget> createState(){
    return appBar1();
  }
}
class appBar1 extends State<Home> {
  @override
  int _currentIndex = 0;
  final List<Widget> _children = [
    MainScreen(Colors.indigo),
    MainScreen(Colors.deepPurpleAccent),
    dummyScreen(),
  ];
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 15, 15, 40),
      body: _children[_currentIndex],
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 50, 50, 125),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            GestureDetector(
              child:Hero(
                tag: 'notifications',
                child:Image.asset(
                  'assets/image.png',
                  fit: BoxFit.contain,
                  height: 55,
            )
            )
            ,onTap: ()
            {
              Navigator.push(context, MaterialPageRoute(builder: (_){
                return dummyScreen();
              }));
            },
            ),
            Container(child: Text('Doğukan 42')),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        onTap: onTabTapped,
        currentIndex: _currentIndex,

        backgroundColor: Color.fromARGB(255, 50, 50, 125),
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.accessibility), title: Text("Dominance")),
          BottomNavigationBarItem(
              icon: Icon(Icons.expand_less), title: Text("Menu")),
          BottomNavigationBarItem(
              icon: Icon(Icons.notifications_active),
              title: Text("Notifications")),
        ],
      ),
    );
  }
  void onTabTapped(int index){
  setState((){
    _currentIndex = index;
  });
}
}