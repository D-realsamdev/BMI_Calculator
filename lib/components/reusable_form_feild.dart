import 'package:flutter/material.dart';

class ReusableFormField extends StatelessWidget {
   ReusableFormField({@required this.hintText, this.prefixIcon});

   final String hintText;
   final Icon prefixIcon;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        hintText: hintText,
        prefixIcon: prefixIcon,
        border: InputBorder.none,
        fillColor: Color(0xfff3f3f4),
        filled: true
      ),
    );
  }
}