import 'package:flutter/material.dart';

const double kSmallFontSize = 20.0;
const double kMediumFontSize = 24.0;
const double kLargeFontSize = 28.0;

const double kFieldBorderRadius = 12.0;
const InputDecoration kTextFieldInputDecoration = InputDecoration(
  contentPadding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 24.0),
);
const double kTextFieldFontSize = kMediumFontSize;
const double kButtonFontSize = kMediumFontSize;

const TextStyle kButtonTextStyle =
    TextStyle(fontSize: kButtonFontSize, fontWeight: FontWeight.w500);
final ButtonStyle kButtonStyle = TextButton.styleFrom(
  padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 24.0),
);

getHeaderStyle(ThemeData theme) {
  return TextStyle(
      color: theme.accentColor,
      fontSize: kLargeFontSize,
      fontWeight: FontWeight.w600);
}

getSubHeaderStyle(ThemeData theme) {
  return TextStyle(
      color: theme.secondaryHeaderColor, fontSize: kMediumFontSize);
}

getLinkStyle(ThemeData theme) {
  return TextStyle(color: theme.primaryColor, fontSize: kSmallFontSize);
}

getInfoTextStyle(ThemeData theme) {
  return TextStyle(
    color: theme.disabledColor,
    fontSize: kSmallFontSize,
  );
}

getDividerTextStyle(ThemeData theme) {
  return TextStyle(
    color: theme.disabledColor,
    fontSize: kSmallFontSize,
  );
}

class LightThemeVaribles {
  static final Color kPrimaryColor = Color(0xFF000000);
  static final Color kSecondaryColor = Color(0xFF1D3A5B);
  static final Color kTertiaryColor = Color(0xFF655F77);
  static final Color kQuaternaryColor = Color(0xFF949494);
  static final Color kContrastToDarkColor = Color(0xFFFFFFFF);
  static final Color kThemeColor = Color(0xFF38B398);
  static final Color kAppBackgroundColor = Color(0xFFFFFFFF);
  static final Color kHeadingTextColor = kPrimaryColor;
  static final Color kSubHeadingTextColor = kTertiaryColor;

  static final Color kTextFieldTextColor = kSecondaryColor;
  static final Color kTextFieldPlaceholderColor = kQuaternaryColor;
  static final Color kTextFieldBackgroundColor = Color(0xFFF8F8F8);
  static final Color kTextFieldErrorBackgroundColor = Colors.red.shade200;

  static final Color kDividerColor = Color(0xFFE3E3E3);
  static final kAppBarBackgroundColor = kContrastToDarkColor;
  static final Color kButtonBackgroundColor = kThemeColor;
  static final Color kButtonTextColor = kContrastToDarkColor;
}

class DarkThemeVaribles {
  static final Color kPrimaryColor = Color(0xFF000000);
  static final Color kSecondaryColor = Color(0xFF1D3A5B);
  static final Color kTertiaryColor = Color(0xFF655F77);
  static final Color kQuaternaryColor = Color(0xFF949494);
  static final Color kContrastToDarkColor = Color(0xFFFFFFFF);
  static final Color kThemeColor = Color(0xFF38B398);
  static final Color kAppBackgroundColor = Color(0xFFFFFFFF);
  static final Color kHeadingTextColor = kPrimaryColor;
  static final Color kSubHeadingTextColor = kTertiaryColor;

  static final Color kTextFieldTextColor = kSecondaryColor;
  static final Color kTextFieldPlaceholderColor = kQuaternaryColor;
  static final Color kTextFieldBackgroundColor = Color(0xFFF8F8F8);
  static final Color kTextFieldErrorBackgroundColor = Colors.red.shade200;

  static final Color kDividerColor = Color(0xFFE3E3E3);
  static final kAppBarBackgroundColor = kContrastToDarkColor;
  static final Color kButtonBackgroundColor = kThemeColor;
  static final Color kButtonTextColor = kContrastToDarkColor;
}
