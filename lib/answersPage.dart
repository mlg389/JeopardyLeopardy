import 'package:flutter/material.dart';
import 'Questions.dart';

class AnswersPage extends StatelessWidget {
  final int difficulty;
  final String topic;
  AnswersPage({@required this.difficulty, this.topic});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(topic),
        ),
        backgroundColor: Colors.blueAccent,
      ),
    );
  }
}
