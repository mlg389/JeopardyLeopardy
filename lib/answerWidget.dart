import 'package:flutter/material.dart';

class AnswerWidget extends StatelessWidget {
  AnswerWidget({this.answer, this.isTrue});

  final String answer;
  final bool isTrue;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.pop(context),
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
}
