import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final String questionText;

  Question({required this.questionText});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    return Container(
      
      width: double.infinity,
      
      padding: EdgeInsets.fromLTRB(20, 50, 0, 0),
      child: Center(
        child: Text(
          questionText,
          style: TextStyle(
              color: Colors.white, fontWeight: FontWeight.w600, fontSize: 35),
        ),
      ),
    );
  }
}
