import 'package:flutter/material.dart';

class LangProvider with ChangeNotifier {
  bool isEng = true;
  void changeLang() {
    isEng = !isEng;
    notifyListeners();
  }
}
