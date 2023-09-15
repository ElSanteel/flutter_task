import 'package:flutter/material.dart';
import 'package:session_10/components/Session%206/custom_quiz_elevated_button.dart';
import 'package:session_10/screens/Session_6_Flutter_Task/Quiz_App/question_3_screen.dart';
import '../../../core/size_config.dart';
import '../../../enums/Session 6/quiz_app/answer_enum.dart';

class Question2Screen extends StatefulWidget {
  int score;
  Question2Screen({super.key, required this.score});

  @override
  State<Question2Screen> createState() => Question2ScreenState();
}

class Question2ScreenState extends State<Question2Screen> {
  String? answerStatus;

  Answer checkAnswer(String selectedAnswer) {
    if (selectedAnswer == "Dart") {
      return Answer.correct;
    } else {
      return Answer.wrong;
    }
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          width: SizeConfig.screenWidth,
          height: SizeConfig.screenHeight,
          child: Stack(
            children: [
              // Background image
              Image.asset(
                "assets/images/quiz_background.png",
                width: double.infinity,
                height: double.infinity,
                fit: BoxFit.cover,
              ),
              Positioned(
                top: 5,
                left: 20,
                right: 20,
                bottom: 20,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    CustomQuizElevatedButton(
                      text:
                          "What programming language is primarily used to develop apps with Flutter?",
                      elevatedButtonWidth: SizeConfig.screenWidth! * 0.9,
                      elevatedButtonHeight: SizeConfig.screenHeight! * 0.2,
                    ),
                    CustomQuizElevatedButton(
                      text: "Java",
                      elevatedButtonWidth: SizeConfig.screenWidth! * 0.6,
                      elevatedButtonHeight: SizeConfig.screenHeight! * 0.1,
                      elevatedButtonFunction: () {
                        setState(() {
                          Answer correctAnswer = checkAnswer("Java");

                          if (correctAnswer == Answer.correct) {
                            widget.score++;
                            answerStatus = "Correct";
                          } else {
                            answerStatus = "Wrong";
                          }
                        });
                      },
                      isCorrect: Answer.wrong,
                    ),
                    CustomQuizElevatedButton(
                      text: "Python",
                      elevatedButtonWidth: SizeConfig.screenWidth! * 0.6,
                      elevatedButtonHeight: SizeConfig.screenHeight! * 0.1,
                      elevatedButtonFunction: () {
                        setState(() {
                          Answer correctness = checkAnswer("Python");

                          if (correctness == Answer.correct) {
                            widget.score++;
                            answerStatus = "Correct";
                          } else {
                            answerStatus = "Wrong";
                          }
                        });
                      },
                      isCorrect: Answer.wrong,
                    ),
                    CustomQuizElevatedButton(
                      text: "Dart",
                      elevatedButtonWidth: SizeConfig.screenWidth! * 0.6,
                      elevatedButtonHeight: SizeConfig.screenHeight! * 0.1,
                      elevatedButtonFunction: () {
                        setState(() {
                          Answer correctness = checkAnswer("Dart");

                          if (correctness == Answer.correct) {
                            widget.score++;
                            answerStatus = "Correct";
                          } else {
                            answerStatus = "Wrong";
                          }
                        });
                      },
                      isCorrect: Answer.correct,
                    ),
                    CustomQuizElevatedButton(
                      text: "Swift",
                      elevatedButtonWidth: SizeConfig.screenWidth! * 0.6,
                      elevatedButtonHeight: SizeConfig.screenHeight! * 0.1,
                      elevatedButtonFunction: () {
                        setState(() {
                          Answer correctness = checkAnswer("Swift");

                          if (correctness == Answer.correct) {
                            widget.score++;
                            answerStatus = "Correct";
                          } else {
                            answerStatus = "Wrong";
                          }
                        });
                      },
                      isCorrect: Answer.wrong,
                    ),
                    Center(
                      child: answerStatus != null
                          ? Text(
                              answerStatus!,
                              style: TextStyle(
                                  fontSize: 35,
                                  color: answerStatus == "Correct"
                                      ? const Color(0xff27A41C)
                                      : Colors.red),
                            )
                          : const SizedBox(),
                    ),
                    CustomQuizElevatedButton(
                      text: "Next",
                      elevatedButtonWidth: SizeConfig.screenWidth! * 0.4,
                      elevatedButtonFunction: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) =>
                                Question3Screen(score: widget.score),
                          ),
                        );
                      },
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
