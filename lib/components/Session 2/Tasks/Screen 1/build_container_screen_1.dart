import 'package:flutter/material.dart';

Container buildContainer(
    {required Color backGround,
    required IconData icon,
    required String whiteText}) {
  return Container(
    width: 180,
    height: 65,
    decoration: BoxDecoration(
      borderRadius: const BorderRadius.all(Radius.circular(25)),
      color: backGround,
    ),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          icon,
          color: Colors.white,
        ),
        const SizedBox(width: 10),
        Text(
          whiteText,
          style: const TextStyle(color: Colors.white),
        )
      ],
    ),
  );
}
