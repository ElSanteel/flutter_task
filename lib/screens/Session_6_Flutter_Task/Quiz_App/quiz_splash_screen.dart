import 'dart:async';

import 'package:flutter/material.dart';
import 'package:session_10/screens/Session_6_Flutter_Task/Quiz_App/question_1_screen.dart';
import '../../../core/size_config.dart';

class QuizSplashScreen extends StatefulWidget {
  const QuizSplashScreen({super.key});

  @override
  State<QuizSplashScreen> createState() => _QuizSplashScreenState();
}

class _QuizSplashScreenState extends State<QuizSplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(
        const Duration(seconds: 3),
        () => Navigator.pushReplacement(context,
            MaterialPageRoute(builder: (context) => const Question1Screen())));
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);

    return Scaffold(
      body: SizedBox(
        width: SizeConfig.screenWidth,
        height: SizeConfig.screenHeight,
        child: Image.asset(
          "assets/images/quiz_splash_screen.png",
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
