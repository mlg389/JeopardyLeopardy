import 'package:flutter/material.dart';
import 'main.dart';

class EndScreen extends StatelessWidget {
  EndScreen({Key key, this.score}) : super(key: key);
  final int score;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(10),
              child: Text("Final Score:\n" + score.toString()),
            ),
            GestureDetector(
              onTap: () => Navigator.push(
                  context, MaterialPageRoute(builder: (context) => MyApp())),
              child: Card(
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: Image.asset(
                    'images/play.png',
                  ),
                ),
                elevation: 5,
                margin: EdgeInsets.all(10),
                color: Colors.yellow,
              ),
            ),
          ]),
      backgroundColor: Colors.blueAccent,
    );
  }
}
