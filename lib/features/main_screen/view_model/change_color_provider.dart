import 'package:flutter/material.dart';

class ChangeColorProvider extends ChangeNotifier {
  List<bool> _activeButtons = [false, false, false, false,false];

  bool isActive(int index) => _activeButtons[index];

  void toggleButton(int index) {
    for (int i = 0; i < _activeButtons.length; i++) {
      _activeButtons[i] = i == index;
    }
    notifyListeners();
  }
}
