import 'package:flutter/material.dart';

class Payment extends StatelessWidget {
  const Payment({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          width: 100,
          height: 100,
          decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(20)),
              color: Color(0xff38c879)),
          child: const Padding(
            padding: EdgeInsets.only(top: 15.0),
            child: Column(
              children: [
                Icon(
                  Icons.attach_money,
                  color: Colors.white,
                  size: 40,
                ),
                Text(
                  "Payments",
                  style: TextStyle(color: Colors.white),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
