import 'package:flutter/material.dart';

Column buildColumnInsideContainer(
    {required String boldText,
    required double boldTextSize,
    required String greyedText,
    required double greyedTextSize}) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(
        boldText,
        style: TextStyle(
            color: const Color(0xff090450),
            fontSize: boldTextSize,
            fontWeight: FontWeight.bold),
      ),
      const SizedBox(height: 5),
      Text(
        greyedText,
        style: TextStyle(color: Colors.grey, fontSize: greyedTextSize),
      )
    ],
  );
}
