import 'package:flutter/material.dart';

class homeProvider extends ChangeNotifier{
  bool isplay = false;
  void changeState() {
    isplay = !isplay;
    notifyListeners();
  }
}