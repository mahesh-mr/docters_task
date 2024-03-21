// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class RadioButton extends StatelessWidget {
  const RadioButton({
    Key? key,
    required this.value,
    required this.groupValue,
    this.onChanged,
    required this.text,
  }) : super(key: key);
  final int value;
  final int groupValue;
  final void Function(int?)? onChanged;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Radio(
          value: value,
          groupValue: groupValue,
          onChanged: onChanged,
        ),
        Text(
          text,
        )
      ],
    );
  }
}


class RadioButtons extends StatelessWidget {
  const RadioButtons({
    Key? key,
    required this.value,
    required this.groupValue,
    this.onChanged,
    required this.text,
  }) : super(key: key);
  final String value;
  final String groupValue;
  final void Function(String?)? onChanged;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Radio(
          value: value,
          groupValue: groupValue,
          onChanged: onChanged,
        ),
        Text(
          text,
        )
      ],
    );
  }
}
