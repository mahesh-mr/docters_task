// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:mediezytech_task/core/colors.dart';

class SubmitButton extends StatelessWidget {
  const SubmitButton({
    Key? key,
    required this.onTap,
    required this.loding,
  }) : super(key: key);

  final VoidCallback onTap;
  final bool loding;
  

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
     
          backgroundColor: appPrymary,
          foregroundColor: appBlack,
          elevation: 0,
          minimumSize: const Size(double.infinity, 50),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          )),
      onPressed: onTap,
      child: loding
          ? const CircularProgressIndicator(
              color: background,
            )
          : const Text("Submit"),
    );
  }
}
