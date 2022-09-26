import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class InputDetails extends StatelessWidget {
  InputDetails({
    Key? key,
    required this.text,
    required this.icon,
    this.inputType,
    required this.obscured,
  }) : super(key: key);

  final String text;
  final bool obscured;
  final IconData? icon;
  final TextInputType? inputType;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50),
        color: Colors.white,
      ),
      child: Center(
        child: TextFormField(
          style: TextStyle(),
          decoration: InputDecoration(
            border: InputBorder.none,
            hintText: text,
            prefixIcon: Icon(icon),
          ),
          obscureText: obscured,
          keyboardType: inputType,
        ),
      ),
    );
  }
}

class SimpleTextField extends StatelessWidget {
  const SimpleTextField({
    Key? key,
    required this.text,
    required this.iconData,
  }) : super(key: key);
  final String text;
  final IconData iconData;

  @override
  Widget build(BuildContext context) {
    return TextField(
      style: const TextStyle(),
      decoration: InputDecoration(
        labelText: 'About Me',
        prefixIcon: Icon(iconData),
      ),
    );
  }
}
