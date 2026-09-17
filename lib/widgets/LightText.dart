
// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

class LightText extends StatelessWidget {
  double size;
  final String font;
  final String text;
    Color color;
 
  TextOverflow textOverflow;

  LightText({
    super.key,
    this.size = 20,

    this.textOverflow = TextOverflow.ellipsis,
    this.font = "font30",
    this.color=Colors.black,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
  return Text(
    overflow: textOverflow,
    text,
    style: TextStyle(
      fontWeight: FontWeight.w300,
      fontSize: size,
      color: color,
      fontFamily: font,
    ),
  );
}
}
    