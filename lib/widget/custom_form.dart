import 'package:flutter/material.dart';

class CustomFormfeld extends StatelessWidget {
  const CustomFormfeld({
    super.key,
    required this.controller,
    required this.textinputType,
    required this.labelText,
    required this.hintText,
  });

  final TextEditingController controller;
  final TextInputType textinputType;
  final String labelText;
  final String hintText;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: textinputType,
      controller: controller,
      validator: (value) {
        if (value == null) {
          return "Required Field";
        }
        if (value.isEmpty) {
          return "Required Field";
        } else {
          return null;
        }
      },
      decoration: InputDecoration(
        labelText: labelText,
        hintText: hintText,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
      ),
    );
  }
}
