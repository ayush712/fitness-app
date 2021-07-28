import 'package:fithics_mobile/shared/constants/styles.dart';
import 'package:flutter/material.dart';

class ButtonWrapper extends StatelessWidget {
  final String title;
  final onPressed;
  ButtonWrapper({required this.onPressed, required this.title});
  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      style: kButtonStyle,
      child: Text(
        title,
        style: kButtonTextStyle,
      ),
    );
  }
}
