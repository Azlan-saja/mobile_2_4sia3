import 'package:flutter/material.dart';

class CounterProvider extends ChangeNotifier {
  int _valueCounter = 1;

  kurangi() {
    _valueCounter--;
    notifyListeners();
  }

  tambahin() {
    _valueCounter++;
    notifyListeners();
  }

  String get hasil {
    return _valueCounter.toString();
  }
}
