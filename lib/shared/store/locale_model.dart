import 'package:flutter/material.dart';

class LocaleModel extends ChangeNotifier {
  String _currentLocale = 'en';
  setLocale(String locale) {
    _currentLocale = locale;
    return notifyListeners();
  }

  String getCurrentLocale() {
    return _currentLocale;
  }

  getSupportedLocales() {
    return [
      Locale('en', ''), // English, no country code
      Locale('es', ''), // Spanish, no country code]
    ];
  }
}
