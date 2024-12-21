import 'package:flutter/material.dart';

class CounterProvider with ChangeNotifier {
  int counter = 0;
  void increase() {
    counter++;
    notifyListeners();
  }

  void decrease() {
    counter--;
    notifyListeners();
  }
}
