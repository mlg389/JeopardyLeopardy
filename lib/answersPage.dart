import 'package:flutter/material.dart';
import 'package:jeopardy_leopardy/answerWidget.dart';
import 'Questions.dart';
import 'TopicsWidget.dart';

class AnswersPage extends StatelessWidget {
  final int difficulty;
  final String topic;
  final bool isLastQuestion;
  AnswersPage({@required this.difficulty, this.topic, this.isLastQuestion});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(topic),
      ),
      backgroundColor: Colors.blueAccent,
      body: buildWidgets(),
    );
  }

  Questions getQuestion() {
    if (this.topic == 'Best Practices') {
      Questions q = new BestPractices(this.difficulty);
      return q;
    }
    if (this.topic == 'Flutter App Anatomy') {
      Questions q = new FlutterAppAnatomy(this.difficulty);
      return q;
    }
    if (this.topic == 'Mobile Apps History') {
      Questions q = new ServerUsageConfiguration(this.difficulty);
      return q;
    }
    if (this.topic == 'O.O.P.') {
      Questions q = new OOP(this.difficulty);
      return q;
    }
    if (this.topic == 'A.S. Config') {
      Questions q = new ASConfig(this.difficulty);
      return q;
    }
  }

  Column buildWidgets() {
    Questions question = getQuestion();
    List<Widget> list = new List<Widget>();
    list.add(new TopicsWidget(topic: getQuestion().question, fontSize: 20));

    var answersList = question.answers.toList();
    answersList.shuffle();

    for (var i = 0; i < answersList.length; i++) {
      list.add(new AnswerWidget(
          answer: answersList[i], isLastQuestion: this.isLastQuestion));
    }
    return new Column(children: list);
  }
}
