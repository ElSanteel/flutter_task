import 'package:flutter/material.dart';

Container buildPaymentContainer(
    {required Color backgroundColor,
    required IconData icon,
    required String whiteText,
    required String greyedText}) {
  return Container(
    width: 155,
    height: 160,
    decoration: BoxDecoration(
        color: backgroundColor, borderRadius: BorderRadius.circular(20)),
    child: Padding(
      padding: const EdgeInsets.only(top: 15, bottom: 10),
      child: Column(
        children: [
          Icon(
            icon,
            color: Colors.white,
            size: 30,
          ),
          const SizedBox(
            height: 20,
          ),
          Text(
            whiteText,
            style: const TextStyle(color: Colors.white, fontSize: 30),
          ),
          const SizedBox(height: 7),
          Text(
            greyedText,
            style: const TextStyle(color: Color(0xD7D7D7FF), fontSize: 15),
          )
        ],
      ),
    ),
  );
}
