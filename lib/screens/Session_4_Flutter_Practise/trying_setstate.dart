import 'package:flutter/material.dart';

class TryingSetState extends StatefulWidget {
  const TryingSetState({super.key});

  @override
  State<TryingSetState> createState() => _TryingSetStateState();
}

class _TryingSetStateState extends State<TryingSetState> {
  int counter = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text("Counter"),
            Text("$counter"),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 100,
                  height: 100,
                  decoration: BoxDecoration(
                      color: Colors.green,
                      borderRadius: BorderRadius.circular(15)),
                  child: Column(
                    children: [
                      const Text(
                        "Counter",
                        style: TextStyle(color: Colors.white),
                      ),
                      const SizedBox(height: 10),
                      IconButton(
                        icon: const Icon(
                          Icons.add,
                          color: Colors.white,
                        ),
                        onPressed: () {
                          counter++;
                          setState(() {});
                        },
                      ),
                    ],
                  ),
                ),
                const SizedBox(width: 15),
                Container(
                  width: 100,
                  height: 100,
                  decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(15)),
                  child: Column(
                    children: [
                      const Text(
                        "Counter",
                        style: TextStyle(color: Colors.white),
                      ),
                      const SizedBox(height: 10),
                      IconButton(
                        icon: const Icon(
                          Icons.minimize_rounded,
                          color: Colors.white,
                        ),
                        onPressed: () {
                          counter--;
                          setState(() {});
                        },
                      ),
                    ],
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
