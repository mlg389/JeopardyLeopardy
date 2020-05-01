import 'package:flutter/material.dart';
import 'answersPage.dart';

class GameTileWidget extends StatelessWidget {
  GameTileWidget({this.price, this.topicTitle});
  final int price;
  final String topicTitle;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) =>
                  AnswersPage(difficulty: price, topic: topicTitle))),
      child: Card(
        child: Padding(
          padding:
              const EdgeInsets.only(left: 15, right: 15, top: 30, bottom: 30),
          child: Text(
            "\$" + price.toString(),
          ),
        ),
        elevation: 5,
        margin: EdgeInsets.all(10),
        color: Colors.yellow,
      ),
    );
  }
}
