import 'package:flutter/material.dart';

SizedBox buildTextField({required String text, required IconData icon}) {
  return SizedBox(
    width: 400,
    child: TextField(
      textAlign: TextAlign.right,
      textDirection: TextDirection.rtl,
      decoration: InputDecoration(
        enabledBorder: const OutlineInputBorder(
          borderSide: BorderSide(width: 2, color: Colors.grey), //<-- SEE HERE
        ),
        prefixIcon: Icon(
          icon,
          color: Colors.grey,
        ),
        hintText: text,
        hintStyle: const TextStyle(fontSize: 20, color: Color(0xfffda941)),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(6),
        ),
      ),
    ),
  );
}
