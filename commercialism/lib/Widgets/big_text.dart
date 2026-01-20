import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class BigText extends StatelessWidget {
  final String text;
  final double size;
  final Color? color;
  final TextAlign align;
  final FontWeight weight;
  final int maxLines;
  final TextOverflow overflow;

  const BigText({
    Key? key,
    required this.text,
    this.size = 20,
    this.color = Colors.black,
    this.align = TextAlign.start,
    this.weight = FontWeight.w400,
    this.maxLines = 1,
    this.overflow = TextOverflow.ellipsis,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      maxLines: maxLines,
      overflow: overflow,
      textAlign: align,
      style: TextStyle(
        fontFamily: 'Roboto',
        fontSize: size,
        color: color,
        fontWeight: weight,
      ),
    );
  }
}