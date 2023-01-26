import 'package:flutter/material.dart';
import 'package:habit_tracker/features/Initial_Quiz/screens/Quiz_Screen/Answer.dart';
import 'package:habit_tracker/features/Initial_Quiz/screens/Quiz_Screen/Question.dart';

class Quiz extends StatelessWidget {
  final List _quizDetail = [
    {
      "question": "Do you procastinate ?",
      "answer": [
        "Yes I'am ready to change that ",
        "No, I easily finish the task at  hand",
        "Not ready to answer",
      ]
    },
    {
      "question": "Do you find it  hard to focus?",
      "answer": [
        "Yes,I get distracted easily",
        "No, I stay focused when needed",
        "Not ready to answer",
      ]
    },
  ];

  int _questionIndex = 0;
  final List selected_answers = [];

  final List<String> imagePath = [
    'images/option1.png',
    'images/option2.png',
    'images/option3.png',
  ];

  void answerQuestion(
      { int? selected_answer,  int? question_no}) {
        print("reach here ");
        
    selected_answers.add({"question": question_no, "answer": selected_answers});
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      // rgba(49, 30, 182, 1)
      width: double.infinity,
      height: double.infinity,
      
      color: Color.fromRGBO(49, 30, 182, 1),
      
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Question(questionText: _quizDetail[_questionIndex]["question"]),
          Container(

            // color: Colors.yellow,
            
            height: MediaQuery.of(context).size.height/2,
            child: Column(
            
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Answer(
                    answerText: _quizDetail[_questionIndex]["answer"][0],
                    imagePath: imagePath[0],
                    answerQuestion: answerQuestion,
                    selected_option: 0,
                    question_no: _questionIndex),
                Answer(
                    answerText: _quizDetail[_questionIndex]["answer"][1],
                    imagePath: imagePath[1],
                    answerQuestion: answerQuestion,
                    selected_option: 1,
                    question_no: _questionIndex),
                Answer(
                    answerText: _quizDetail[_questionIndex]["answer"][2],
                    imagePath: imagePath[2],
                    answerQuestion: answerQuestion,
                    selected_option: 2,
                    question_no: _questionIndex),
              ],
            ),
          )
        ],
      ),
    );
  }
}
