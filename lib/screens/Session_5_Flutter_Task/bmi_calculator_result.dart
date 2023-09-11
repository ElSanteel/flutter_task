import 'package:flutter/material.dart';

import '../../models/session 5/BMIModel.dart';

class ResultScreen extends StatefulWidget {
  final BMIModel bmiModel;

  const ResultScreen({Key? key, required this.bmiModel}) : super(key: key);

  @override
  State<ResultScreen> createState() => ResultScreenState();
}

class ResultScreenState extends State<ResultScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff0A0E21),
      body: Padding(
        padding: const EdgeInsets.only(top: 40, left: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Your Result:",
              style: TextStyle(fontSize: 36, color: Colors.white),
            ),
            IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: const Icon(
                Icons.arrow_back_ios_new_outlined,
                size: 30,
                color: Colors.white,
              ),
            ),
            const SizedBox(height: 15),
            Container(
              width: 383,
              height: 535,
              decoration: BoxDecoration(
                  color: const Color(0xff1A1F38),
                  borderRadius: BorderRadius.circular(20)),
              child: Column(
                children: [
                  const SizedBox(
                    height: 60,
                  ),
                  Text(
                    widget.bmiModel.getBMIStatus(), // Get BMI status
                    style: TextStyle(
                        color: widget.bmiModel.getBMIColor(), fontSize: 35),
                  ),
                  const SizedBox(
                    height: 150,
                  ),
                  Text(
                    widget.bmiModel.result.toString(),
                    style: const TextStyle(color: Colors.white, fontSize: 35),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
