import 'package:flutter/material.dart';

class TodoProvider extends ChangeNotifier {
  void notifyAll() {
    notifyListeners();
  }
}
