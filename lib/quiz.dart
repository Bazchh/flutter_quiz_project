import 'package:flutter/material.dart';

class Quiz extends StatelessWidget {

  final String texto;

  Quiz(this.texto);

  @override
  Widget build(BuildContext context) {
    return Text(texto);
  }
}