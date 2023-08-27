import 'package:flutter/material.dart';

import '../../components/Session 2/Tasks/Screen 6/build_container.dart';

class Screen6 extends StatelessWidget {
  const Screen6({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const Text(
            "Click a cell when it's your move.",
            style: TextStyle(fontSize: 20),
          ),
          const SizedBox(
            height: 25,
          ),
          const Text(
            "Player 2 move",
            style: TextStyle(fontSize: 20),
          ),
          const SizedBox(height: 5),
          Padding(
            padding: const EdgeInsets.all(10),
            child: Column(
              children: [
                Row(
                  children: [
                    buildContainer(
                        backgroundColor: const Color(0xff2196f3),
                        icon: Icons.close),
                    buildContainer(),
                    buildContainer(),
                  ],
                ),
                Row(
                  children: [
                    buildContainer(),
                    buildContainer(
                        backgroundColor: const Color(0xffed544f),
                        icon: Icons.circle_outlined),
                    buildContainer(),
                  ],
                ),
                Row(
                  children: [
                    buildContainer(),
                    buildContainer(),
                    buildContainer(
                        backgroundColor: const Color(0xff2196f3),
                        icon: Icons.close),
                  ],
                )
              ],
            ),
          ),
          const SizedBox(height: 15),
          SizedBox(
            width: 400,
            height: 50,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xfff44234),
              ),
              onPressed: () {},
              child: const Text(
                "Restart Game",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
