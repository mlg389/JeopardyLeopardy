import 'package:flutter/material.dart';
import 'answersPage.dart';

class GameTileWidget extends StatefulWidget {
  GameTileWidget({this.price, this.topicTitle});
  final int price;
  final String topicTitle;

  @override
  _GameTileState createState() =>
      _GameTileState(price: this.price, topicTitle: this.topicTitle);
}

class _GameTileState extends State<GameTileWidget> {
  _GameTileState({this.price, this.topicTitle});
  final int price;
  final String topicTitle;
  bool _beenClicked = false;
  Color _cardColor = Colors.yellow;

  void _pressed() {
    setState(() {
      if (!_beenClicked) {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) =>
                    AnswersPage(difficulty: price, topic: topicTitle)));
      }
      _beenClicked = true;
      _cardColor = Colors.black12;
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => _pressed(),
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
        color: _cardColor,
      ),
    );
  }
}
