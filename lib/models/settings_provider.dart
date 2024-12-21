import 'package:flutter/material.dart';

class SettingsProvider extends ChangeNotifier {
  String APIUrl = '';
  void changeURL(String value) {
    APIUrl = value;
    notifyListeners();
  }
}
