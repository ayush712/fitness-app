import 'package:fithics_mobile/shared/constants/styles.dart';
import 'package:flutter/material.dart';

enum ButtonType { OutlinedButton, TextButton }

class ButtonWrapper extends StatelessWidget {
  final String title;
  final onPressed;
  final buttonType;
  ButtonWrapper(
      {required this.onPressed,
      required this.title,
      this.buttonType = ButtonType.TextButton});
  @override
  Widget build(BuildContext context) {
    switch (buttonType) {
      case ButtonType.TextButton:
        return TextButton(
          onPressed: onPressed,
          style: kButtonStyle,
          child: Text(
            title,
            style: kButtonTextStyle,
          ),
        );
      case ButtonType.OutlinedButton:
        return OutlinedButton(
          onPressed: onPressed,
          style: kButtonStyle,
          child: Text(
            title,
            style: kButtonTextStyle,
          ),
        );
      default:
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
}
