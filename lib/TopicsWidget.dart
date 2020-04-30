import 'package:flutter/material.dart';

class TopicsWidget extends StatelessWidget {
  TopicsWidget({this.topic});
  final String topic;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding:
            const EdgeInsets.only(left: 15, right: 15, top: 30, bottom: 30),
        child: Text(
          topic,
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
      ),
      elevation: 5,
      margin: EdgeInsets.all(10),
      color: Colors.deepPurpleAccent,
    );
  }
}
