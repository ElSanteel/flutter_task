import 'package:flutter/material.dart';

Container buildContainer({
  Color? backgroundColor,
  IconData? icon,
}) {
  return Container(
    width: 130,
    height: 230,
    decoration:
        BoxDecoration(border: Border.all(width: 3), color: backgroundColor),
    child: Icon(
      icon,
      size: 40,
    ),
  );
}
