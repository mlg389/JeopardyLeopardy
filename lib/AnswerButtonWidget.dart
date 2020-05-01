import 'package:flutter/material.dart';

class AnswerButtonWidget extends StatelessWidget {
  AnswerButtonWidget({this.letter, this.answer, this.isCorrect});
  final String letter;
  final String answer;
  final bool isCorrect;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Card(
        child: Padding(
          padding:
              const EdgeInsets.only(left: 15, right: 15, top: 30, bottom: 30),
          child: Text(
            "\$) \$" + letter + answer,
          ),
        ),
        elevation: 5,
        margin: EdgeInsets.all(10),
        color: Colors.yellow,
      ),
    );
  }
}
