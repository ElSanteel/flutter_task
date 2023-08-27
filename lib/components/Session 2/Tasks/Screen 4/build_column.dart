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
            color: Color(0xff584ada),
          ),
          SizedBox(width: 15),
          Text(
            number,
            style: TextStyle(color: Color(0xff584ada)),
          )
        ],
      ),
      Text(
        greyedText,
        style: TextStyle(color: Colors.grey),
      )
    ],
  );
}
