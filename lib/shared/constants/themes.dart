import 'package:fithics_mobile/shared/constants/styles.dart';
import 'package:flutter/material.dart';

ThemeData lightTheme = ThemeData(
  fontFamily: 'Poppins',
  primaryColor: LightThemeVaribles.kThemeColor,
  focusColor: LightThemeVaribles.kTextFieldTextColor,
  accentColor: LightThemeVaribles.kPrimaryColor,
  secondaryHeaderColor: LightThemeVaribles.kTertiaryColor,
  disabledColor: LightThemeVaribles.kQuaternaryColor,
  dividerColor: LightThemeVaribles.kDividerColor,
  scaffoldBackgroundColor: LightThemeVaribles.kAppBackgroundColor,
  inputDecorationTheme: InputDecorationTheme(
    errorStyle: TextStyle(
        backgroundColor: LightThemeVaribles.kTextFieldErrorBackgroundColor),
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
      TextSelectionThemeData(cursorColor: LightThemeVaribles.kPrimaryColor),
  textButtonTheme: TextButtonThemeData(
    style: ButtonStyle(
      backgroundColor: MaterialStateProperty.all<Color>(
          LightThemeVaribles.kButtonBackgroundColor),
      foregroundColor:
          MaterialStateProperty.all<Color>(LightThemeVaribles.kButtonTextColor),
      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
        RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(kFieldBorderRadius),
          side: BorderSide(color: LightThemeVaribles.kButtonBackgroundColor),
        ),
      ),
    ),
  ),
);

ThemeData darkTheme = ThemeData(
  fontFamily: 'Poppins',
  primaryColor: LightThemeVaribles.kThemeColor,
  focusColor: LightThemeVaribles.kTextFieldTextColor,
  accentColor: LightThemeVaribles.kPrimaryColor,
  secondaryHeaderColor: LightThemeVaribles.kTertiaryColor,
  disabledColor: LightThemeVaribles.kQuaternaryColor,
  dividerColor: LightThemeVaribles.kDividerColor,
  scaffoldBackgroundColor: LightThemeVaribles.kAppBackgroundColor,
  inputDecorationTheme: InputDecorationTheme(
    errorStyle: TextStyle(
      backgroundColor: LightThemeVaribles.kTextFieldErrorBackgroundColor,
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
      TextSelectionThemeData(cursorColor: LightThemeVaribles.kPrimaryColor),
  textButtonTheme: TextButtonThemeData(
    style: ButtonStyle(
      backgroundColor: MaterialStateProperty.all<Color>(
          LightThemeVaribles.kButtonBackgroundColor),
      foregroundColor:
          MaterialStateProperty.all<Color>(LightThemeVaribles.kButtonTextColor),
      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
        RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(kFieldBorderRadius),
          side: BorderSide(color: LightThemeVaribles.kButtonBackgroundColor),
        ),
      ),
    ),
  ),
);
