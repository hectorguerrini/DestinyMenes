import 'package:flutter/material.dart';

class TextTitleWidget extends StatelessWidget {
  final String texto;
  final double fontSize;

  const TextTitleWidget(
      {Key key, @required this.texto, @required this.fontSize})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      this.texto,
      style: TextStyle(
          fontSize: this.fontSize,
          color: Colors.white,
          fontWeight: FontWeight.bold,
          shadows: [Shadow(offset: Offset(2.5, 2.5), color: Colors.black)]),
    );
  }
}
