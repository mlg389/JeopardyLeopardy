import 'package:flutter/material.dart';
import 'endScreenPage.dart';

class AnswerWidget extends StatelessWidget {
  AnswerWidget({this.answer, this.isTrue, this.isLastQuestion});

  final bool isLastQuestion;
  final String answer;
  final bool isTrue;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => answerSelected(context),
      child: Card(
        child: Padding(
          padding:
              const EdgeInsets.only(left: 15, right: 15, top: 30, bottom: 30),
          child: Text(
            answer,
          ),
        ),
        elevation: 5,
        margin: EdgeInsets.all(10),
        color: Colors.yellow,
      ),
    );
  }

  void answerSelected(BuildContext context) {
    if (isLastQuestion) {
      print("hit");
      Navigator.push(context,
          MaterialPageRoute(builder: (context) => EndScreen(score: 0)));
    } else {
      print("not hit");
      Navigator.pop(context, true);
    }
  }
}
