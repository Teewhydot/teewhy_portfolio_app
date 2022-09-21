import 'package:flutter/material.dart';


class DesignModeProvider extends ChangeNotifier {
  bool _glassMode = false;

  bool get isGlassMode => _glassMode;
  void toggleDesignMode() {
    _glassMode = !_glassMode;
    notifyListeners();
  }
}