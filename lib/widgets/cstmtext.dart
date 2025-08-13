import 'package:flutter/material.dart';

class Cstmtext extends StatelessWidget {
  final String text;
  final double? fontSize;
  final FontWeight? fontWeight;
  final Color? color;
  final TextStyle? textStyle;

  const Cstmtext({
    super.key,
    required this.text,
    this.fontSize,
    this.fontWeight,
    this.color,
    this.textStyle,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: textStyle ??
          TextStyle(
            fontSize: fontSize ?? 16,
            fontWeight: fontWeight ?? FontWeight.bold,
            color: color ?? Colors.black,
          ),
    );
  }
}
