import 'package:fithics_mobile/shared/constants/styles.dart';
import 'package:fithics_mobile/shared/store/theme_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

enum ButtonType { OutlinedButton, TextButton, ElevatedButton, NoBorderButton }

class ButtonWrapper extends StatelessWidget {
  final String title;
  final onPressed;
  final ButtonType buttonType;
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
      case ButtonType.NoBorderButton:
        return noBorderButtonWrapper(context);
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

  OutlinedButton noBorderButtonWrapper(context) {
    return OutlinedButton(
      onPressed: onPressed,
      style: kNoBorderButtonStyle,
      child: Text(
        title,
        style: kButtonTextStyle,
        // style: getBackButtonTextColor(
        //     Provider.of<ThemeModel>(context).currentTheme),
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
