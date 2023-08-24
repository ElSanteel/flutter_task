import 'package:flutter/material.dart';

class EgyptFlag extends StatelessWidget {
  const EgyptFlag({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          Expanded(
            flex: 6,
            child: Container(
              color: const Color(0xffcf0922),
            ),
          ),
          Expanded(
            flex: 6,
            child: Container(
              color: Colors.white,
              child: Center(
                child: Image.asset(
                  "assets/images/eagle.png",
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          Expanded(
            flex: 6,
            child: Container(
              color: Colors.black,
            ),
          )
        ],
      ),
    );
  }
}
