import 'package:english_words/english_words.dart';
import 'package:flutter/material.dart';

class dummyScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Notifications",
      home: Scaffold(
        appBar: AppBar(
          title: Row(
            children: <Widget>[
              Text("Notifications")
            ],
          ),
        ),
        body: RandomWords(),
      ),
    );
  }
}
class RandomWords extends StatefulWidget{
  @override
  State<StatefulWidget> createState(){
    return RandomWordsState();
  }
}
class RandomWordsState extends State<RandomWords>{
  final suggestions = <WordPair>[];

  final font = const TextStyle(fontSize: 12);

  @override 
  Widget build(BuildContext context){
   return Scaffold(
     appbar: AppBar(
       title: Text("Startup text generator."),
     ),
     body: buildSuggestions(context),
   );
  }
  Widget buildSuggestions(BuildContext context){
    return ListView.builder(
      padding: EdgeInsets.all(10),
      itemBuilder: (context, i){
        if (i.isOdd) return Divider(
          
        );
      },
    );
  }
}
