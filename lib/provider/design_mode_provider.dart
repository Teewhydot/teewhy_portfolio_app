import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class DesignModeProvider extends ChangeNotifier {
  bool _glassMode = false;

  bool get isGlassMode => _glassMode == true;
// this function updates the value of glass mode based on the selection of the user during the previous runtime.
  DesignModeProvider(isGlass) {
    _glassMode = isGlass ? true : false;
  }

  void toggleDesignMode(bool isGlass) async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    _glassMode = isGlass ? true : false;
    sharedPreferences.setBool('isGlass', _glassMode);
    notifyListeners();
  }
}