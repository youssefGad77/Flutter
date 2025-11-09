import 'package:flutter/material.dart';

class M extends ChangeNotifier{
  String name = "";
  void appear(String title){
    name = title;
    notifyListeners();
  }
}