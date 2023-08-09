import 'package:flutter/material.dart';

class SubTitleTextWidget extends StatelessWidget {
  const SubTitleTextWidget({
    super.key,
    this.fontSize = 18,
    this.fontWeight = FontWeight.normal,
    this.color,
    this.fontStyle = FontStyle.normal,
    this.textDecoration = TextDecoration.none,
    required this.lebal,
  });
  final String lebal;
  final double fontSize;
  final FontWeight? fontWeight;
  final Color? color;
  final FontStyle fontStyle;
  final TextDecoration textDecoration;

  @override
  Widget build(BuildContext context) {
    return Text(
      lebal,
      style: TextStyle(
        fontSize: fontSize,
        fontWeight: fontWeight,
        color: color,
        fontStyle: fontStyle,
        decoration: textDecoration,
      ),
    );
  }
}
