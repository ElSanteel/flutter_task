import 'package:flutter/material.dart';

class GradientBackground extends StatelessWidget {
  const GradientBackground({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff6094e8),
      body: Stack(
        alignment: Alignment.center,
        children: [
          Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                // Where the linear gradient begins and ends
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                // Add one stop for each color. Stops should increase from 0 to 1
                stops: [0.0, 0.4, 0.7, 1.0],
                colors: [
                  Color(0xff6094e8),
                  Color(0xff728bdf),
                  Color(0xff937cd7),
                  Color(0xffcc63c0),
                ],
              ),
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 200,
                height: 200,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.white,
                ),
                child: Center(child: Image.asset("assets/images/umbrella.png")),
              ),
              const SizedBox(height: 20),
              const Text("This is a sample text.",
                  style: TextStyle(fontSize: 25, color: Colors.white))
            ],
          ),
        ],
      ),
    );
    // Center(
  }
}
