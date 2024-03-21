// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import '../../../core/colors.dart';

class HomeButton extends StatelessWidget {
  const HomeButton({
    Key? key,
    required this.title,
    required this.backgroundColor,
    required this.foregroundColor,
  }) : super(key: key);
final String title;
final Color backgroundColor;
final Color foregroundColor;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      width: double.infinity,
      decoration: BoxDecoration(
        color: backgroundColor,
        border: Border.all(color: appPrymary),
        borderRadius: BorderRadius.circular(
          5,
        ),
      ),
      child: Center(
        child: Text(

          title
          ,
          style: TextStyle(color: foregroundColor),
        ),
      ),
    );
  }
}
