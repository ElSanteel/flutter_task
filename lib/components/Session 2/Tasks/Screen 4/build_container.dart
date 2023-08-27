import 'package:flutter/material.dart';

Container buildContainer(
    {required String image, required String categoryName}) {
  return Container(
    width: 200,
    height: 250,
    decoration: BoxDecoration(
        color: const Color(0xffeceefa),
        borderRadius: BorderRadius.circular(10)),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Image.asset(
          image,
          width: 150,
          height: 150,
        ),
        Text(
          categoryName,
          style: const TextStyle(
              fontSize: 30,
              color: Color(0xffd36b9a),
              fontWeight: FontWeight.bold),
        )
      ],
    ),
  );
}
