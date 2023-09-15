import 'package:flutter/material.dart';
import 'package:session_10/components/Session%206/custom_quiz_elevated_button.dart';
import 'package:session_10/screens/Session_6_Flutter_Task/Quiz_App/quiz_result.dart';
import '../../../core/size_config.dart';
import '../../../enums/Session 6/quiz_app/answer_enum.dart';

class Question3Screen extends StatefulWidget {
  int score;
  Question3Screen({super.key, required this.score});

  @override
  State<Question3Screen> createState() => Question3ScreenState();
}

class Question3ScreenState extends State<Question3Screen> {
  String? answerStatus;

  Answer checkAnswer(String selectedAnswer) {
    if (selectedAnswer == "All of the above") {
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
                          "Which platform(s) is Flutter commonly used to develop apps for?",
                      elevatedButtonWidth: SizeConfig.screenWidth! * 0.9,
                      elevatedButtonHeight: SizeConfig.screenHeight! * 0.2,
                    ),
                    CustomQuizElevatedButton(
                      text: "Android",
                      elevatedButtonWidth: SizeConfig.screenWidth! * 0.6,
                      elevatedButtonHeight: SizeConfig.screenHeight! * 0.1,
                      elevatedButtonFunction: () {
                        setState(() {
                          Answer correctAnswer = checkAnswer("Android");

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
                      text: "iOS",
                      elevatedButtonWidth: SizeConfig.screenWidth! * 0.6,
                      elevatedButtonHeight: SizeConfig.screenHeight! * 0.1,
                      elevatedButtonFunction: () {
                        setState(() {
                          Answer correctness = checkAnswer("iOS");

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
                      text: "Windows",
                      elevatedButtonWidth: SizeConfig.screenWidth! * 0.6,
                      elevatedButtonHeight: SizeConfig.screenHeight! * 0.1,
                      elevatedButtonFunction: () {
                        setState(() {
                          Answer correctness = checkAnswer("Windows");

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
                      text: "All of the above",
                      elevatedButtonWidth: SizeConfig.screenWidth! * 0.6,
                      elevatedButtonHeight: SizeConfig.screenHeight! * 0.1,
                      elevatedButtonFunction: () {
                        setState(() {
                          Answer correctness = checkAnswer("All of the above");

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
                                QuizResultScreen(score: widget.score),
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
