import 'package:flutter/material.dart';

class FourSquares extends StatelessWidget {
  const FourSquares({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(25),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  width: 150,
                  height: 190,
                  color: Colors.red,
                ),
                Container(
                  width: 150,
                  height: 190,
                  color: Colors.red,
                )
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  width: 150,
                  height: 190,
                  color: const Color(0xfffff200),
                ),
                Container(
                  width: 150,
                  height: 190,
                  color: const Color(0xffff7f27),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
