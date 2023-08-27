import 'package:flutter/material.dart';

Container buildContainerScreen5(
    {required String timeType,
    required String time,
    required String prayName}) {
  return Container(
    width: 350,
    height: 45,
    decoration: BoxDecoration(
      color: const Color(0xff0b0742),
      borderRadius: BorderRadius.circular(15),
    ),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Text(
              timeType,
              style: const TextStyle(color: Color(0xff5a8fa7)),
            ),
          ],
        ),
        const SizedBox(width: 2),
        Text(
          time,
          style: const TextStyle(color: Color(0xff5a8fa7), fontSize: 24),
        ),
        const SizedBox(
          width: 60,
        ),
        Text(
          prayName,
          style: const TextStyle(color: Colors.white, fontSize: 30),
        )
      ],
    ),
  );
}
