import 'package:flutter/material.dart';

class TextWidget extends StatelessWidget {
  const TextWidget({super.key, required this.text, required this.color, required this.width, required this.fontSize});

  final String text;
  final Color color;
  final double width;
  final double fontSize;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      color: color,
      height: 100,
      child: Text(
        text,
        style: TextStyle(fontSize: fontSize),
      ),
    );
  }
}

class ExampleColumnRow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const Column(
      mainAxisAlignment: MainAxisAlignment.start,
      mainAxisSize: MainAxisSize.max,
      crossAxisAlignment: CrossAxisAlignment.start,
      textDirection: TextDirection.rtl,
      verticalDirection: VerticalDirection.up,
      children: <Widget>[
        TextWidget(
          color: Colors.limeAccent,
          width: 120,
          text: 'First',
          fontSize: 30,
        ),
        TextWidget(
          color: Colors.cyanAccent,
          width: 180,
          text: 'Second',
          fontSize: 25,
        ),
        TextWidget(
          color: Colors.purpleAccent,
          width: 100,
          text: 'Third',
          fontSize: 20,
        ),
      ],
    );
  }
}

