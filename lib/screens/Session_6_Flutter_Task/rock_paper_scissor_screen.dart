import 'package:flutter/material.dart';
import 'package:session_10/components/Session%206/counter_result.dart';
import 'package:session_10/components/Session%206/custom_image.dart';
import 'package:session_10/components/Session%206/custom_text.dart';
import 'package:session_10/enums/Session%206/game_enum.dart';
import 'dart:math';

import 'package:session_10/enums/Session%206/result_enum.dart';
import 'package:session_10/screens/Session_6_Flutter_Task/result_screen.dart';

class RockPaperScissorScreen extends StatefulWidget {
  const RockPaperScissorScreen({super.key});

  @override
  State<RockPaperScissorScreen> createState() => _RockPaperScissorScreenState();
}

class _RockPaperScissorScreenState extends State<RockPaperScissorScreen> {
  GameEnum? userChoice;
  GameEnum? cpuChoice;
  ResultEnum? result;
  int userCounter = 0;
  int cpuCounter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff1b2b4c),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.only(top: 70),
          child: Column(
            children: [
              CustomText(
                text: "ROCK",
                size: 30,
                isBold: true,
              ),
              CustomText(
                text: "PAPER",
                size: 30,
                isBold: true,
              ),
              CustomText(
                text: "SCISSORS",
                size: 30,
                isBold: true,
              ),
              const SizedBox(height: 10),
              CustomText(text: "Pick your weapon", size: 20),
              const SizedBox(height: 10),
              GestureDetector(
                  onTap: () {
                    userChoice = GameEnum.rock;
                    makeCpuChoice();
                    calculateResult();
                    setState(() {});
                  },
                  child: ImageWidget("rock")),
              GestureDetector(
                onTap: () {
                  userChoice = GameEnum.paper;
                  makeCpuChoice();
                  calculateResult();
                  setState(() {});
                },
                child: ImageWidget("paper"),
              ),
              GestureDetector(
                  onTap: () {
                    userChoice = GameEnum.rock;
                    makeCpuChoice();
                    calculateResult();
                    setState(() {});
                  },
                  child: ImageWidget("scissor")),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Row(
                  children: [
                    CounterResultWidget("Player", userCounter),
                    const Spacer(),
                    CounterResultWidget("CPU", cpuCounter)
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  void makeCpuChoice() {
    Random random = Random();
    int randomNumber = random.nextInt(3);
    cpuChoice = GameEnum.values[randomNumber];
  }

  void calculateResult() {
    if (userChoice == GameEnum.rock) {
      if (cpuChoice == GameEnum.rock) {
        result = ResultEnum.draw;
      } else if (cpuChoice == GameEnum.paper) {
        cpuCounter++;

        result = ResultEnum.lose;
      } else {
        result = ResultEnum.win;
        userCounter++;
      }
    } else if (userChoice == GameEnum.paper) {
      if (cpuChoice == GameEnum.rock) {
        result = ResultEnum.win;
        userCounter++;
      } else if (cpuChoice == GameEnum.paper) {
        result = ResultEnum.draw;
      } else {
        result = ResultEnum.lose;
        cpuCounter++;
      }
    } else {
      if (cpuChoice == GameEnum.rock) {
        result = ResultEnum.lose;
        cpuCounter++;
      } else if (cpuChoice == GameEnum.paper) {
        result = ResultEnum.win;
        userCounter++;
      } else {
        result = ResultEnum.draw;
      }
    }
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => ResultScreen(result!, userChoice!, cpuChoice!),
      ),
    );
  }
}
