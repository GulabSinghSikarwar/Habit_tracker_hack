import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final String answerText;
  final String imagePath;
  Function answerQuestion;
  final int question_no;
  final int selected_option;

  Answer(
      {required this.answerText,
      required this.imagePath,
      required this.answerQuestion,
      required this.question_no,
      required this.selected_option});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    return InkWell(
      onTap: () {
        answerQuestion(
            selected_option: selected_option, question_no: question_no);
      },
      child: Container(
        margin: (selected_option==2)?EdgeInsets.fromLTRB(0, 0, 0, 30):null,
        width: double.infinity,
        height: 100,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(25),
            image: DecorationImage(
          image: AssetImage(imagePath),
        )),
        child: Center(
          child: Text(
            answerText,
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.w600),
          ),
        ),
      ),
    );
  }
}
