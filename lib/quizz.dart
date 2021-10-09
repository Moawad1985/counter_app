import 'dart:math';

import 'package:flutter/material.dart';

class Quizz extends StatefulWidget {
  // final String title;

  @override
  State<Quizz> createState() => _QuizzState();
}

class _QuizzState extends State<Quizz> {
  int quizNum = 0;
  var quizList = [
    'introduce your self?',
    'how are you?',
    'are you serious ?',
  ];

  void randomQuestions() {
    setState(() {
      quizNum = Random().nextInt(3);
      quizList[quizNum];
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          //title: Text(widget.title),
          ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            InkWell(
              onTap: () {
                randomQuestions();
              },
              child: Column(
                children: [
                  Text(
                    'Enter Quiz ',
                    style: TextStyle(fontSize: 35),

                  ),
                  SizedBox(height: 10,),
                  Text(
                    '${quizList[quizNum]}',
                    style: TextStyle(fontSize: 20),

                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
