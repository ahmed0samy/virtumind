import 'package:flutter/material.dart';

class ThemeProvider extends ChangeNotifier {
  bool darkMode = false; 
    void changeMode(value) {
    darkMode = value;
    notifyListeners();
  }
}
