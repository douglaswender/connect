import 'package:flutter/material.dart';

class ConnectTextStyles {
  final TextStyle textStyle;

  const ConnectTextStyles({
    required this.textStyle,
  });

  static TextStyle heading({Color? fontColor}) => TextStyle(
        fontWeight: FontWeight.w500,
        fontSize: 48,
        color: fontColor,
      );

  static TextStyle paragraph({Color? fontColor}) => TextStyle(
        fontWeight: FontWeight.w300,
        fontSize: 18,
        color: fontColor,
      );

  static TextStyle button({Color? fontColor}) => TextStyle(
        fontWeight: FontWeight.w400,
        fontSize: 18,
        color: fontColor,
      );
}
