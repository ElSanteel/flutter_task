import 'package:flutter/material.dart';

import '../../enums/Session 6/quiz_app/answer_enum.dart';

class CustomQuizElevatedButton extends StatefulWidget {
  String text;
  double? elevatedButtonWidth;
  double? elevatedButtonHeight;
  dynamic elevatedButtonFunction;
  Answer? isCorrect;

  CustomQuizElevatedButton(
      {required this.text,
      this.elevatedButtonWidth,
      this.elevatedButtonHeight,
      this.elevatedButtonFunction,
      this.isCorrect,
      super.key});

  @override
  State<CustomQuizElevatedButton> createState() =>
      _CustomQuizElevatedButtonState();
}

class _CustomQuizElevatedButtonState extends State<CustomQuizElevatedButton> {
  Color buttonColor = const Color(0xff72ADB6);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: widget.elevatedButtonWidth,
      height: widget.elevatedButtonHeight,
      child: ElevatedButton(
        onPressed: () {
          if (widget.elevatedButtonFunction != null) {
            widget.elevatedButtonFunction();

            setState(() {
              buttonColor = widget.isCorrect == Answer.correct
                  ? const Color(0xff27A41C)
                  : widget.isCorrect == Answer.wrong
                      ? Colors.red
                      : const Color(0xff72ADB6);
            });
          }
        },
        style: ElevatedButton.styleFrom(
          backgroundColor: buttonColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
        ),
        child: Text(widget.text,
            style: const TextStyle(fontSize: 25, color: Colors.white)),
      ),
    );
  }
}
