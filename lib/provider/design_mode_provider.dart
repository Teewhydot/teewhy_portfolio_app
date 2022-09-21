import 'package:flutter/material.dart';


class DesignModeProvider extends ChangeNotifier {
  bool _glassMode = false;
  bool get isGlassMode => _glassMode == true;

  void toggleDesignMode(bool isGlass) {
  _glassMode = isGlass? true : false ;
    notifyListeners();
  }
}