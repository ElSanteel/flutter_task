import 'package:flutter/material.dart';

class QuizResultScreen extends StatelessWidget {
  final int score;

  const QuizResultScreen({super.key, required this.score});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            "assets/images/quiz_background.png",
            width: double.infinity,
            height: double.infinity,
            fit: BoxFit.cover,
          ),
          Center(
            child: Text(
              "Your Score is : $score / 3",
              style: const TextStyle(fontSize: 30),
            ),
          ),
        ],
      ),
    );
  }
}
