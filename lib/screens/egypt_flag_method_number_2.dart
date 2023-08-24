import 'package:flutter/material.dart';

class EgyptFlag2 extends StatelessWidget {
  const EgyptFlag2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Red Stripe
          Positioned.fill(
            right: 280,
            child: Container(
              color: const Color(0xffcf0922),
            ),
          ),

          // White Stripe with Eagle
          Positioned(
            top: 0,
            left: 10,
            right: 0,
            bottom: 0, // Adjust the top position as needed
            child: Image.asset(
              "assets/images/eagle.png",
            ),
          ),

          // Black Stripe
          Positioned.fill(
            left: 280,
            child: Container(
              color: Colors.black,
            ),
          ),
        ],
      ),
    );
  }
}
