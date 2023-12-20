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
      {
        'texto': 'Qual a sua cor favorita?',
        'respostas': ['Verde', 'Preto', 'Azul', 'Roxo'],
      },
      {
        'texto': 'Qual seu nome?',
        'resposta': ['zezinho', 'joao', 'abigail'],
      },
      {'texto': 'Qual sua idade?',
      'resposta': ['11', '25', '17'],},
    ];
    List <String> respostas = quiz[_perguntaSeleiconada].cast()['respostas'];
    List<Widget> widgets = respostas.map((t) => resposta (t, _respostas)).toList();

    /* for (var textoResp in respostas) {
      widgets.add(resposta((textoResp), _respostas));
    } */

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Quiz'), centerTitle: true),
        body: Column(
          children: <Widget>[
            Quiz(quiz[_perguntaSeleiconada]['texto'].toString()),
            ...widgets,
          ],
          mainAxisAlignment: MainAxisAlignment.center,
        ),
      ),
    );
  }
}

class QuizApp extends StatefulWidget {
  _QuizAppState createState() {
    return _QuizAppState();
  }
}
