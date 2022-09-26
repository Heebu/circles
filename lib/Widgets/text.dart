import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Header2Text extends StatelessWidget {
  Header2Text({
    Key? key,
    required this.text,
    this.color,
  }) : super(key: key);
  final String text;
  Color? color = Colors.white;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontSize: 30,
        color: color,
        fontWeight: FontWeight.w700,
      ),
    );
  }
}

class Header1Text extends StatelessWidget {
  const Header1Text({
    Key? key,
    required this.text,
  }) : super(key: key);
  final String text;
  final Color? color = Colors.white;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontSize: 80,
        fontWeight: FontWeight.bold,
        color: color,
        letterSpacing: 1.5,
      ),
    );
  }
}
