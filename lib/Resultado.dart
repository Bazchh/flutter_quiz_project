import 'package:flutter/material.dart';

class Resultado extends StatelessWidget {
  final String texto;
  const Resultado(this.texto);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: double.infinity,
        child: Center(
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blueAccent,
                foregroundColor: Colors.white),
            onPressed: () {},
            child: Text(
              texto,
              style: const TextStyle(fontSize: 50, color: Colors.black),
            ),
          ),
        ));
  }
}
