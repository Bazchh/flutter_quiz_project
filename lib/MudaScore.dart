import 'package:flutter/material.dart';

class MudaScore extends StatelessWidget {
  final int score;

  const MudaScore({
    required this.score,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 60,
        height: 70,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(50.0),
            color: Colors.blueAccent),
        child: Text(
          score.toString(),
          style: const TextStyle(
            fontSize: 50,
            color: Colors.black,
          ),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
