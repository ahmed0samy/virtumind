import 'package:flutter/material.dart';

class HeightProvider with ChangeNotifier {
  final GlobalKey _key = GlobalKey();
  double? _calculatedHeight;

  GlobalKey get key => _key;

  double? get calculatedHeight => _calculatedHeight;

  void calculateHeight() {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      final RenderBox renderBox = _key.currentContext!.findRenderObject() as RenderBox;
      _calculatedHeight = renderBox.size.height;
      notifyListeners();
    });
  }
}
