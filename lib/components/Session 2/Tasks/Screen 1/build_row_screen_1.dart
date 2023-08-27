import 'package:flutter/material.dart';

Column buildRow({required String boldText, required String greyedText}) {
  return Column(
    children: [
      Text(boldText,
          style: const TextStyle(
              fontWeight: FontWeight.bold,
              color: Color(0xff3e4059),
              fontSize: 25)),
      const SizedBox(
        height: 10,
      ),
      Text(
        greyedText,
        style: const TextStyle(color: Colors.grey),
      )
    ],
  );
}
