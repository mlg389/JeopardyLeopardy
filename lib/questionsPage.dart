import 'package:flutter/material.dart';
import 'gameTileWidget.dart';
import 'TopicsWidget.dart';

//                Best Practices, Anatomy of a Flutter App, Object Oriented Programming, History of Mobile Apps, and Android Studio Configuration
class QuestionsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Question Selection'),
      ),
      body: Row(
        children: <Widget>[
          Expanded(
            child: Column(children: <Widget>[
              TopicsWidget(topic: 'Best \nPractices', fontSize: 12),
              GameTileWidget(price: 100, topicTitle: 'Best Practices'),
              GameTileWidget(price: 200, topicTitle: 'Best Practices'),
              GameTileWidget(price: 300, topicTitle: 'Best Practices'),
              GameTileWidget(price: 400, topicTitle: 'Best Practices'),
              GameTileWidget(price: 500, topicTitle: 'Best Practices'),
            ]),
          ),
          Expanded(
            child: Column(children: <Widget>[
              TopicsWidget(topic: 'Flutter App \nAnatomy', fontSize: 10),
              GameTileWidget(price: 100, topicTitle: 'Flutter App Anatomy'),
              GameTileWidget(price: 200, topicTitle: 'Flutter App Anatomy'),
              GameTileWidget(price: 300, topicTitle: 'Flutter App Anatomy'),
              GameTileWidget(price: 400, topicTitle: 'Flutter App Anatomy'),
              GameTileWidget(price: 500, topicTitle: 'Flutter App Anatomy'),
            ]),
          ),
          Expanded(
            child: Column(children: <Widget>[
              TopicsWidget(topic: 'O.O.P.', fontSize: 20),
              GameTileWidget(price: 100, topicTitle: 'O.O.P.'),
              GameTileWidget(price: 200, topicTitle: 'O.O.P.'),
              GameTileWidget(price: 300, topicTitle: 'O.O.P.'),
              GameTileWidget(price: 400, topicTitle: 'O.O.P.'),
              GameTileWidget(price: 500, topicTitle: 'O.O.P.'),
            ]),
          ),
          Expanded(
            child: Column(children: <Widget>[
              TopicsWidget(topic: 'Mobile Apps \nHistory', fontSize: 10),
              GameTileWidget(price: 100, topicTitle: 'Mobile Apps History'),
              GameTileWidget(price: 200, topicTitle: 'Mobile Apps History'),
              GameTileWidget(price: 300, topicTitle: 'Mobile Apps History'),
              GameTileWidget(price: 400, topicTitle: 'Mobile Apps History'),
              GameTileWidget(price: 500, topicTitle: 'Mobile Apps History'),
            ]),
          ),
          Expanded(
            child: Column(children: <Widget>[
              TopicsWidget(topic: 'A.S. Config'),
              GameTileWidget(price: 100, topicTitle: 'A.S. Config'),
              GameTileWidget(price: 200, topicTitle: 'A.S. Config'),
              GameTileWidget(price: 300, topicTitle: 'A.S. Config'),
              GameTileWidget(price: 400, topicTitle: 'A.S. Config'),
              GameTileWidget(price: 500, topicTitle: 'A.S. Config'),
            ]),
          ),
        ],
      ),
      backgroundColor: Colors.blueAccent,
    );
  }
}
