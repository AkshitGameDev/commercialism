import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class SmallText extends StatelessWidget {
  final String text;
  final double size;
  final double height;
  final Color? color;
  final TextAlign align;
  final FontWeight weight;
  final int maxLines;

  const SmallText({
    Key? key,
    required this.text,
    this.size = 12,
    this.color = const Color(0xFF6B7280),
    this.align = TextAlign.start,
    this.weight = FontWeight.w400,
    this.maxLines = 1,
    this.height = 1.2,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      maxLines: maxLines,
      textAlign: align,
      style: TextStyle(
        fontFamily: 'Roboto',
        fontSize: size,
        color: color,
        fontWeight: weight,
        height: height,
      ),
    );
  }
}