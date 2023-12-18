// ignore_for_file: prefer_const_constructors, annotate_overrides, use_key_in_widget_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

main() => runApp(QuizApp());

class _QuizAppState extends State<QuizApp>{

var _perguntaSeleiconada = 0;
    
void _respostas(){
  setState(() {
    _perguntaSeleiconada++;
  });
      
      print(_perguntaSeleiconada);
    }


@override
  Widget build(BuildContext context){
    final quiz = [
      'Sua cor favorita?',
      'Qual sua idade?',
    ];


    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Quiz')
        ),
        body: Column(
          children: <Widget>[
            Text(quiz[_perguntaSeleiconada]),
            ElevatedButton(
             onPressed: _respostas,
             child: Text('Resposta 1')
             ),
             ElevatedButton(
             onPressed: _respostas,
             child: Text('Resposta 2')
             ),
             ElevatedButton(
             onPressed: _respostas,
             child: Text('Resposta 3')
             ),
          ],
        ),
      ),
     );
  }

}


class QuizApp extends StatefulWidget{

  _QuizAppState createState() {
    return _QuizAppState();
  }
}