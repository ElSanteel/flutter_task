import 'package:flutter/material.dart';
import 'package:session_10/components/Session%206/custom_quiz_elevated_button.dart';
import 'package:session_10/screens/Session_6_Flutter_Task/Quiz_App/question_2_screen.dart';
import '../../../core/size_config.dart';
import '../../../enums/Session 6/quiz_app/answer_enum.dart';

class Question1Screen extends StatefulWidget {
  const Question1Screen({super.key});

  @override
  State<Question1Screen> createState() => Question1ScreenState();
}

class Question1ScreenState extends State<Question1Screen> {
  int score = 0;
  String? answerStatus;

  Answer checkAnswer(String selectedAnswer) {
    if (selectedAnswer == "A representation of user interface elements") {
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
                      text: "What is the widget tree in Flutter?",
                      elevatedButtonWidth: SizeConfig.screenWidth! * 0.9,
                      elevatedButtonHeight: SizeConfig.screenHeight! * 0.2,
                    ),
                    CustomQuizElevatedButton(
                      text: "A representation of user interface elements",
                      elevatedButtonWidth: SizeConfig.screenWidth! * 0.6,
                      elevatedButtonHeight: SizeConfig.screenHeight! * 0.1,
                      elevatedButtonFunction: () {
                        setState(() {
                          Answer correctAnswer = checkAnswer(
                              "A representation of user interface elements");

                          if (correctAnswer == Answer.correct) {
                            score++;
                            answerStatus = "Correct";
                          } else {
                            answerStatus = "Wrong";
                          }
                        });
                      },
                      isCorrect: Answer.correct,
                    ),
                    CustomQuizElevatedButton(
                      text: " A data structure for storing images",
                      elevatedButtonWidth: SizeConfig.screenWidth! * 0.6,
                      elevatedButtonHeight: SizeConfig.screenHeight! * 0.1,
                      elevatedButtonFunction: () {
                        setState(() {
                          Answer correctness = checkAnswer(
                              " A data structure for storing images");

                          if (correctness == Answer.correct) {
                            score++;
                            answerStatus = "Correct";
                          } else {
                            answerStatus = "Wrong";
                          }
                        });
                      },
                      isCorrect: Answer.wrong,
                    ),
                    CustomQuizElevatedButton(
                      text: "A tool for debugging code",
                      elevatedButtonWidth: SizeConfig.screenWidth! * 0.6,
                      elevatedButtonHeight: SizeConfig.screenHeight! * 0.1,
                      elevatedButtonFunction: () {
                        setState(() {
                          Answer correctness =
                              checkAnswer("A tool for debugging code");

                          if (correctness == Answer.correct) {
                            score++;
                            answerStatus = "Correct";
                          } else {
                            answerStatus = "Wrong";
                          }
                        });
                      },
                      isCorrect: Answer.wrong,
                    ),
                    CustomQuizElevatedButton(
                      text: "A type of database in Flutter",
                      elevatedButtonWidth: SizeConfig.screenWidth! * 0.6,
                      elevatedButtonHeight: SizeConfig.screenHeight! * 0.1,
                      elevatedButtonFunction: () {
                        setState(() {
                          Answer correctness =
                              checkAnswer("A type of database in Flutter");

                          if (correctness == Answer.correct) {
                            score++;
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
                            builder: (context) => Question2Screen(score: score),
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
