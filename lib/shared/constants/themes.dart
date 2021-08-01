import 'package:fithics_mobile/shared/constants/styles.dart';
import 'package:flutter/material.dart';

ThemeData lightTheme = ThemeData(
  fontFamily: kFontFamily,
  primaryColor: LightThemeVaribles.kThemeColor,
  primaryColorDark: LightThemeVaribles.kTextFieldTextColor,
  primaryColorLight: LightThemeVaribles.kTextFieldPlaceholderColor,
  focusColor: LightThemeVaribles.kTextFieldTextColor,
  accentColor: LightThemeVaribles.kPrimaryTextColor,
  secondaryHeaderColor: LightThemeVaribles.kTertiaryTextColor,
  disabledColor: LightThemeVaribles.kQuaternaryTextColor,
  dividerColor: LightThemeVaribles.kDividerColor,
  scaffoldBackgroundColor: LightThemeVaribles.kAppBackgroundColor,
  brightness: Brightness.light,
  inputDecorationTheme: InputDecorationTheme(
    errorStyle: TextStyle(
      color: LightThemeVaribles.kTextFieldErrorColor,
    ),
    errorBorder: OutlineInputBorder(
      borderRadius: BorderRadius.all(
        Radius.circular(kFieldBorderRadius),
      ),
      borderSide: BorderSide(
        color: LightThemeVaribles.kTextFieldErrorBorderColor,
      ),
    ),
    helperStyle: TextStyle(
      color: LightThemeVaribles.kTextFieldPlaceholderColor,
    ),
    filled: true,
    fillColor: LightThemeVaribles.kTextFieldBackgroundColor,
    border: OutlineInputBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(kFieldBorderRadius),
        ),
        borderSide:
            BorderSide(color: LightThemeVaribles.kTextFieldBackgroundColor)),
    focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.all(Radius.circular(kFieldBorderRadius)),
      borderSide:
          BorderSide(color: LightThemeVaribles.kTextFieldBackgroundColor),
    ),
    enabledBorder: UnderlineInputBorder(
      borderRadius: BorderRadius.all(Radius.circular(kFieldBorderRadius)),
      borderSide:
          BorderSide(color: LightThemeVaribles.kTextFieldBackgroundColor),
    ),
  ),
  appBarTheme: AppBarTheme(color: LightThemeVaribles.kAppBarBackgroundColor),
  textTheme: TextTheme(
    subtitle1: TextStyle(
        color: LightThemeVaribles.kTextFieldTextColor,
        fontSize: kTextFieldFontSize),
  ),
  textSelectionTheme:
      TextSelectionThemeData(cursorColor: LightThemeVaribles.kPrimaryTextColor),
  textButtonTheme: TextButtonThemeData(
    style: ButtonStyle(
      backgroundColor: MaterialStateProperty.all<Color>(
          LightThemeVaribles.kTextButtonBackgroundColor),
      foregroundColor: MaterialStateProperty.all<Color>(
          LightThemeVaribles.kTextButtonTextColor),
      overlayColor: MaterialStateProperty.resolveWith(
        (states) {
          return states.contains(MaterialState.pressed)
              ? LightThemeVaribles.kTextButtonTapOverlayColor
              : null;
        },
      ),
      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
        RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(kFieldBorderRadius),
        ),
      ),
    ),
  ),
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ButtonStyle(
      backgroundColor: MaterialStateProperty.all<Color>(
          LightThemeVaribles.kTextButtonBackgroundColor),
      foregroundColor: MaterialStateProperty.all<Color>(
          LightThemeVaribles.kTextButtonTextColor),
      overlayColor: MaterialStateProperty.resolveWith(
        (states) {
          return states.contains(MaterialState.pressed)
              ? LightThemeVaribles.kTextButtonTapOverlayColor
              : null;
        },
      ),
      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
        RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(kFieldBorderRadius),
        ),
      ),
    ),
  ),
  outlinedButtonTheme: OutlinedButtonThemeData(
    style: ButtonStyle(
      foregroundColor: MaterialStateProperty.all<Color>(
          LightThemeVaribles.kOutlinedButtonTextColor),
      overlayColor: MaterialStateProperty.resolveWith(
        (states) {
          return states.contains(MaterialState.pressed)
              ? LightThemeVaribles.kOutlinedButtonTapOverlayColor
              : null;
        },
      ),
      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
        RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(kFieldBorderRadius),
          side: BorderSide(
            color: LightThemeVaribles.kOutlinedButtonBorderColor,
          ),
        ),
      ),
    ),
  ),
);

ThemeData darkTheme = ThemeData(
  fontFamily: kFontFamily,
  primaryColor: DarkThemeVaribles.kThemeColor,
  primaryColorDark: LightThemeVaribles.kTextFieldTextColor,
  primaryColorLight: LightThemeVaribles.kTextFieldPlaceholderColor,
  focusColor: DarkThemeVaribles.kTextFieldTextColor,
  accentColor: DarkThemeVaribles.kPrimaryColor,
  secondaryHeaderColor: DarkThemeVaribles.kTertiaryColor,
  disabledColor: DarkThemeVaribles.kQuaternaryColor,
  dividerColor: DarkThemeVaribles.kDividerColor,
  scaffoldBackgroundColor: DarkThemeVaribles.kAppBackgroundColor,
  brightness: Brightness.dark,
  inputDecorationTheme: InputDecorationTheme(
    errorStyle: TextStyle(
      color: LightThemeVaribles.kTextFieldErrorColor,
    ),
    errorBorder: OutlineInputBorder(
      borderRadius: BorderRadius.all(
        Radius.circular(kFieldBorderRadius),
      ),
      borderSide: BorderSide(
        color: LightThemeVaribles.kTextFieldErrorBorderColor,
      ),
    ),
    helperStyle: TextStyle(
      color: DarkThemeVaribles.kTextFieldPlaceholderColor,
    ),
    filled: true,
    fillColor: DarkThemeVaribles.kTextFieldBackgroundColor,
    border: OutlineInputBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(kFieldBorderRadius),
        ),
        borderSide:
            BorderSide(color: DarkThemeVaribles.kTextFieldBackgroundColor)),
    focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.all(Radius.circular(kFieldBorderRadius)),
      borderSide:
          BorderSide(color: DarkThemeVaribles.kTextFieldBackgroundColor),
    ),
    enabledBorder: UnderlineInputBorder(
      borderRadius: BorderRadius.all(
        Radius.circular(kFieldBorderRadius),
      ),
      borderSide:
          BorderSide(color: DarkThemeVaribles.kTextFieldBackgroundColor),
    ),
  ),
  appBarTheme: AppBarTheme(color: DarkThemeVaribles.kAppBarBackgroundColor),
  textTheme: TextTheme(
    subtitle1: TextStyle(
        color: DarkThemeVaribles.kTextFieldTextColor,
        fontSize: kTextFieldFontSize),
  ),
  textSelectionTheme:
      TextSelectionThemeData(cursorColor: DarkThemeVaribles.kPrimaryColor),
  textButtonTheme: TextButtonThemeData(
    style: ButtonStyle(
      backgroundColor: MaterialStateProperty.all<Color>(
          DarkThemeVaribles.kTextButtonBackgroundColor),
      foregroundColor: MaterialStateProperty.all<Color>(
          DarkThemeVaribles.kTextButtonTextColor),
      overlayColor: MaterialStateProperty.resolveWith(
        (states) {
          return states.contains(MaterialState.pressed)
              ? DarkThemeVaribles.kTextButtonTapOverlayColor
              : null;
        },
      ),
      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
        RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(kFieldBorderRadius),
        ),
      ),
    ),
  ),
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ButtonStyle(
      backgroundColor: MaterialStateProperty.all<Color>(
          DarkThemeVaribles.kTextButtonBackgroundColor),
      foregroundColor: MaterialStateProperty.all<Color>(
          DarkThemeVaribles.kTextButtonTextColor),
      overlayColor: MaterialStateProperty.resolveWith(
        (states) {
          return states.contains(MaterialState.pressed)
              ? DarkThemeVaribles.kTextButtonTapOverlayColor
              : null;
        },
      ),
      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
        RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(kFieldBorderRadius),
        ),
      ),
    ),
  ),
  outlinedButtonTheme: OutlinedButtonThemeData(
    style: ButtonStyle(
      foregroundColor: MaterialStateProperty.all<Color>(
          DarkThemeVaribles.kOutlinedButtonTextColor),
      overlayColor: MaterialStateProperty.resolveWith(
        (states) {
          return states.contains(MaterialState.pressed)
              ? DarkThemeVaribles.kOutlinedButtonTapOverlayColor
              : null;
        },
      ),
      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
        RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(kFieldBorderRadius),
          side: BorderSide(
            color: DarkThemeVaribles.kOutlinedButtonBorderColor,
          ),
        ),
      ),
    ),
  ),
);
