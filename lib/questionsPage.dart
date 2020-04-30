import 'package:flutter/material.dart';
import 'gameTileWidget.dart';
import 'TopicsWidget.dart';

//                Best Practices, Anatomy of a Flutter App, Object Oriented Programming, History of Mobile Apps, and Android Studio Configuration
class QuestionsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Question Selection'),
        ),
        body: Row(
          children: <Widget>[
            Expanded(
              child: Column(children: <Widget>[
                TopicsWidget(topic: 'Best \nPractices'),
                GameTileWidget(price: 100),
                GameTileWidget(price: 200),
                GameTileWidget(price: 300),
                GameTileWidget(price: 400),
                GameTileWidget(price: 500),
              ]),
            ),
            Expanded(
              child: Column(children: <Widget>[
                TopicsWidget(topic: 'Flutter App \nAnatomy'),
                GameTileWidget(price: 100),
                GameTileWidget(price: 200),
                GameTileWidget(price: 300),
                GameTileWidget(price: 400),
                GameTileWidget(price: 500),
              ]),
            ),
            Expanded(
              child: Column(children: <Widget>[
                TopicsWidget(topic: 'O.O.P.'),
                GameTileWidget(price: 100),
                GameTileWidget(price: 200),
                GameTileWidget(price: 300),
                GameTileWidget(price: 400),
                GameTileWidget(price: 500),
              ]),
            ),
            Expanded(
              child: Column(children: <Widget>[
                TopicsWidget(topic: 'Mobile Apps \nHistory'),
                GameTileWidget(price: 100),
                GameTileWidget(price: 200),
                GameTileWidget(price: 300),
                GameTileWidget(price: 400),
                GameTileWidget(price: 500),
              ]),
            ),
            Expanded(
              child: Column(children: <Widget>[
                TopicsWidget(topic: 'A.S. Config'),
                GameTileWidget(price: 100),
                GameTileWidget(price: 200),
                GameTileWidget(price: 300),
                GameTileWidget(price: 400),
                GameTileWidget(price: 500),
              ]),
            ),
          ],
        ),
        backgroundColor: Colors.blueAccent,
      ),
    );
  }
}
