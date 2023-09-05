import 'package:flutter/material.dart';

Column buildColumn(
    {required IconData icon,
    required String number,
    required String greyedText}) {
  return Column(
    children: [
      Row(
        children: [
          Icon(
            icon,
            color: const Color(0xff584ada),
          ),
          const SizedBox(width: 15),
          Text(
            number,
            style: const TextStyle(color: Color(0xff584ada)),
          )
        ],
      ),
      Text(
        greyedText,
        style: const TextStyle(color: Colors.grey),
      )
    ],
  );
}
