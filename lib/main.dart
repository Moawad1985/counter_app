import 'package:counter_app/quizz.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'counter_task.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home:
        Quizz()
      // const
      // MyHomePage(title: 'Moawad Soliman'),
    );
  }
}


