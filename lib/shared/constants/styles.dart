import 'package:flutter/material.dart';

const double kXSmallFontSize = 15.0;
const double kSmallFontSize = 18.0;
const double kMediumFontSize = 22.0;
const double kLargeFontSize = 28.0;

const double kFieldBorderRadius = 16.0;
const double kFieldVerticlePadding = 18.0;
const double kFieldHorizontalPadding = 20.0;

const double kSpaceBetweenTwoFields = 15.0;

const String kFontFamily = 'Poppins';

const InputDecoration kTextFieldInputDecoration = InputDecoration(
  contentPadding: EdgeInsets.symmetric(
      vertical: kFieldVerticlePadding, horizontal: kFieldHorizontalPadding),
);
const double kTextFieldFontSize = kSmallFontSize;
const double kButtonFontSize = kSmallFontSize;

const TextStyle kButtonTextStyle =
    TextStyle(fontSize: kButtonFontSize, fontWeight: FontWeight.w500);

const EdgeInsets kButtonPaddings = EdgeInsets.symmetric(
  vertical: kFieldVerticlePadding,
  horizontal: kFieldHorizontalPadding,
);
final ButtonStyle kTextButtonStyle = TextButton.styleFrom(
  padding: kButtonPaddings,
);
final ButtonStyle kElevatedButtonStyle = ElevatedButton.styleFrom(
  padding: kButtonPaddings,
);

final ButtonStyle kOutlinedButtonStyle = OutlinedButton.styleFrom(
  padding: kButtonPaddings,
);

getHeaderStyle(ThemeData theme) {
  return TextStyle(
      color: theme.accentColor,
      fontSize: kLargeFontSize,
      fontWeight: FontWeight.w600);
}

getSubHeaderStyle(ThemeData theme) {
  return TextStyle(
    color: theme.secondaryHeaderColor,
    fontSize: kMediumFontSize,
  );
}

getLinkStyle(ThemeData theme) {
  return TextStyle(color: theme.primaryColor, fontSize: kXSmallFontSize);
}

getInfoTextStyle(ThemeData theme) {
  return TextStyle(
    color: theme.disabledColor,
    fontSize: kXSmallFontSize,
  );
}

getDividerTextStyle(ThemeData theme) {
  return TextStyle(
    color: theme.disabledColor,
    fontSize: kSmallFontSize,
  );
}

getForgotPasswordTextColor(ThemeData theme) {
  return theme.textTheme.subtitle1!.color;
}

class LightThemeVaribles {
  static final Color kPrimaryTextColor = Color(0xFF000000);
  static final Color kSecondaryTextColor = Color(0xFF1D3A5B);
  static final Color kTertiaryTextColor = Color(0xFF655F77);
  static final Color kQuaternaryTextColor = Color(0xFF949494);
  static final Color kContrastTextColorToDarkColor = Color(0xFFFFFFFF);
  static final Color kThemeColor = Color(0xFF38B398);
  static final Color kAppBackgroundColor = Color(0xFFFFFFFF);
  static final Color kHeadingTextColor = kPrimaryTextColor;
  static final Color kSubHeadingTextColor = kTertiaryTextColor;

  static final Color kTextFieldTextColor = kSecondaryTextColor;
  static final Color kTextFieldPlaceholderColor = kQuaternaryTextColor;
  static final Color kTextFieldBackgroundColor = Color(0xFFF8F8F8);
  static final Color kTextFieldErrorBackgroundColor = Colors.red.shade200;
  static final Color kTextFieldErrorColor = Colors.red.shade400;
  static final Color kTextFieldErrorBorderColor = Colors.red.shade200;

  static final Color kDividerColor = Color(0xFFE3E3E3);
  static final kAppBarBackgroundColor = kContrastTextColorToDarkColor;

  static final Color kTextButtonBackgroundColor = kThemeColor;
  static final Color kTextButtonTextColor = kContrastTextColorToDarkColor;
  static final Color kTextButtonTapOverlayColor = Color(0x38b39880);

  static final Color kOutlinedButtonTextColor = kThemeColor;
  static final Color kOutlinedButtonBorderColor = kThemeColor;
  static final Color kOutlinedButtonTapOverlayColor = Color(0x1138B398);
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
  static final Color kTextFieldErrorColor = Colors.red.shade400;
  static final Color kTextFieldErrorBorderColor = Colors.red.shade200;

  static final Color kDividerColor = Color(0xFFE3E3E3);
  static final kAppBarBackgroundColor = kContrastToDarkColor;

  static final Color kTextButtonBackgroundColor = kThemeColor;
  static final Color kTextButtonTextColor = kContrastToDarkColor;
  static final Color kTextButtonTapOverlayColor = Color(0x38b39880);

  static final Color kOutlinedButtonTextColor = kThemeColor;
  static final Color kOutlinedButtonBorderColor = kThemeColor;
  static final Color kOutlinedButtonTapOverlayColor = Color(0x1138B398);
}
