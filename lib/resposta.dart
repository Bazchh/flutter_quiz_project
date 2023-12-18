import 'package:flutter/material.dart';

class resposta extends StatelessWidget {
  final String texto;
  final void Function() click;
  resposta(this.texto, this.click);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.deepOrange,
          foregroundColor: Colors.green,
          alignment: Alignment.center,
          textStyle: TextStyle(fontSize: 25),
        ),
        onPressed: click,
        child: Text(texto),
      ),
    );
  }
}
