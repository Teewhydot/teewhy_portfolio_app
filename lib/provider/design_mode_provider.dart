import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class DesignModeProvider extends ChangeNotifier {
  bool _darkMode = false;

  bool get isDarkMode => _darkMode == true;

  DesignModeProvider(isDarkMode) {
    _darkMode = isDarkMode ? true : false;
  }

  void toggleDesignMode(bool isGlass) async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    _darkMode = isGlass ? true : false;
    sharedPreferences.setBool('isDark', _darkMode);
    notifyListeners();
  }
}