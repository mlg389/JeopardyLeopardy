import 'package:flutter/material.dart';
import 'Questions.dart';

class AnswersPage extends StatefulWidget {
  final int difficulty;
  final String topic;
  AnswersPage({@required this.difficulty, this.topic});

  @override
  _AnswersPageState createState() => _AnswersPageState();
}

class _AnswersPageState extends State<AnswersPage> {
  @override
  Widget build(BuildContext context) {
    // if this topic, call that topic class with the difficulty
    switch (widget.topic) {
      case "Best Practices":
        {
          // var or BestPractices type?
          BestPractices obj = new BestPractices(widget.difficulty);
          // TODO: do a thing with the list of lists, maybe can call custom widget with?
          obj.orderedAnswersHere[0][0]; // first answer set letter
        }
        break;

      case "Flutter App Anatomy":
        {
          FlutterAppAnatomy(widget.difficulty);
        }
        break;

      case "O.O.P.":
        {
          OOP(widget.difficulty);
        }
        break;

      case "Server Usage Configuration":
        {
          ServerUsageConfiguration(widget.difficulty);
        }
        break;

      case "A.S. Config":
        {
          ASConfig(widget.difficulty);
        }
        break;
    }

    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Text(widget.topic),
      ),
      backgroundColor: Colors.blueAccent,
      body: Column(
        children: <Widget>[],
      ),
    ));
  }
}
