import 'package:fithics_mobile/shared/constants/styles.dart';
import 'package:flutter/material.dart';

enum ButtonType { OutlinedButton, TextButton, ElevatedButton }

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
        return textButtonWrapper();
      case ButtonType.OutlinedButton:
        return outlinedButtonWrapper();
      case ButtonType.ElevatedButton:
        return elevatedButtonWrapper();
      default:
        return textButtonWrapper();
    }
  }

  TextButton textButtonWrapper() {
    return TextButton(
      onPressed: onPressed,
      style: kTextButtonStyle,
      child: Text(
        title,
        style: kButtonTextStyle,
      ),
    );
  }

  OutlinedButton outlinedButtonWrapper() {
    return OutlinedButton(
      onPressed: onPressed,
      style: kOutlinedButtonStyle,
      child: Text(
        title,
        style: kButtonTextStyle,
      ),
    );
  }

  ElevatedButton elevatedButtonWrapper() {
    return ElevatedButton(
      onPressed: onPressed,
      style: kElevatedButtonStyle,
      child: Text(
        title,
        style: kButtonTextStyle,
      ),
    );
  }
}
