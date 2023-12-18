// ignore_for_file: prefer_const_constructors, annotate_overrides, use_key_in_widget_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import './quiz.dart';
import './resposta.dart';

main() => runApp(QuizApp());

class _QuizAppState extends State<QuizApp> {
  var _perguntaSeleiconada = 0;

  void _respostas() {
    setState(() {
      _perguntaSeleiconada++;
    });

    print(_perguntaSeleiconada);
  }

  @override
  Widget build(BuildContext context) {
    final quiz = [
      'Sua cor favorita?',
      'Qual sua idade?',
    ];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Quiz'),
          centerTitle: true,
          foregroundColor: Colors.greenAccent,
          backgroundColor: Colors.pink,
        ),
        body: Column(
          children: <Widget>[
            Quiz(quiz[_perguntaSeleiconada]),
            resposta('resposta 1', _respostas),
            resposta('resposta 2', _respostas),
            resposta('resposta 3', _respostas),
          ],
          mainAxisAlignment: MainAxisAlignment.center,
        ),
        backgroundColor: Colors.black,
      ),
    );
  }
}

class QuizApp extends StatefulWidget {
  _QuizAppState createState() {
    return _QuizAppState();
  }
}
