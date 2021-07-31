//import 'package:flutter/material.dart';
import 'package:form_field_validator/form_field_validator.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

RequiredValidator requiredValidator(String errorText) {
  return RequiredValidator(errorText: errorText);
}

MinLengthValidator minLengthValidator(
    {required int minLength, required String errorText}) {
  return MinLengthValidator(8, errorText: errorText);
}

MaxLengthValidator maxLengthValidator(
    {required int maxLength, required String errorText}) {
  return MaxLengthValidator(8, errorText: errorText);
}

PatternValidator patternValidator(
    {required String errorText,
    required Pattern pattern,
    bool caseSensitive = true}) {
  return PatternValidator(pattern,
      errorText: errorText, caseSensitive: caseSensitive);
}

MultiValidator nameValidator(context) {
  AppLocalizations? translations = AppLocalizations.of(context);
  return MultiValidator([
    RequiredValidator(errorText: translations!.nameRequiredError),
    MaxLengthValidator(8, errorText: translations.nameMaxLengthError),
  ]);
}

MultiValidator emailValidator(context) {
  AppLocalizations? translations = AppLocalizations.of(context);
  return MultiValidator([
    RequiredValidator(errorText: translations!.emailRequiredError),
    EmailValidator(errorText: translations.emailInValidError),
  ]);
}

MultiValidator passwordValidator(context) {
  AppLocalizations? translations = AppLocalizations.of(context);
  return MultiValidator([
    RequiredValidator(errorText: translations!.passwordRequiredError),
    MinLengthValidator(8, errorText: translations.passwordMinLengthError),
    MaxLengthValidator(8, errorText: translations.passwordMaxLengthError),
    PatternValidator(r'(?=.*?[#?!@$%^&*-])',
        errorText: translations.passwordRegexError)
  ]);
}

MultiValidator mobileValidator(context) {
  AppLocalizations? translations = AppLocalizations.of(context);
  return MultiValidator([
    RequiredValidator(errorText: translations!.mobileRequiredError),
    PatternValidator(
        r'+(9[976]\d|8[987530]\d|6[987]\d|5[90]\d|42\d|3[875]\d|2[98654321]\d|9[8543210]|8[6421]|6[6543210]|5[87654321]|4[987654310]|3[9643210]|2[70]|7|1)\W*\d\W*\d\W*\d\W*\d\W*\d\W*\d\W*\d\W*\d\W*(\d{1,2})',
        errorText: translations.mobileRegexError)
  ]);
}

matchValidator(
    {required String errorText, required String text1, required String text2}) {
  return MatchValidator(errorText: errorText).validateMatch(text1, text2);
}

confirmPasswordValidator(
    {required context, required String text1, required String text2}) {
  AppLocalizations? translations = AppLocalizations.of(context);
  return MatchValidator(errorText: translations!.confirmPasswordError)
      .validateMatch(text1, text2);
}
