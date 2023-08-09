import 'package:flutter/material.dart';

class TitleTextWidget extends StatelessWidget {
  const TitleTextWidget({
    super.key,
    this.fontSize = 20,
    this.fontWeight = FontWeight.bold,
    this.color,
    this.fontStyle = FontStyle.normal,
    this.textDecoration = TextDecoration.none,
    required this.lebal,
    this.maxLine,
  });
  final String lebal;
  final double fontSize;
  final FontWeight? fontWeight;
  final Color? color;
  final FontStyle fontStyle;
  final TextDecoration textDecoration;
  final int? maxLine;

  @override
  Widget build(BuildContext context) {
    return Text(
      lebal,
      textAlign: TextAlign.end,
      maxLines: maxLine,
      style: TextStyle(
        fontSize: fontSize,
        fontWeight: fontWeight,
        color: color,
        fontStyle: fontStyle,
        decoration: textDecoration,
        overflow: TextOverflow.ellipsis,
      ),
    );
  }
}
