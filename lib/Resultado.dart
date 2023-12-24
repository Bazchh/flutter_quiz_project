import 'package:flutter/material.dart';

class Resultado extends StatelessWidget {
  final int pontuacao;
  final void Function() reiniciarQuestionario;
  Resultado(this.pontuacao, this.reiniciarQuestionario);

  String get fraseResultado {
    if (pontuacao < 8) {
      return 'Parabéns';
    } else if (pontuacao < 12) {
      return 'Você é bom';
    } else {
      return 'Muito bom';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Center(
          child: Container(
            width: 290,
            height: 100,
            decoration: BoxDecoration(
              color: Colors.blueAccent,
              borderRadius: BorderRadius.circular(50.0),
            ),
            child: Center(
              child: Text(
                fraseResultado,
                style: const TextStyle(
                  fontSize: 50,
                  color: Colors.black,
                ),
              ),
            ),
          ),
        ),
        ElevatedButton(
          child: Text('Reiniciar?'),
          onPressed: reiniciarQuestionario,
          style: ElevatedButton.styleFrom(
              backgroundColor: Colors.blueAccent,
              foregroundColor: Colors.white),
        ),
      ],
    );
  }
}
