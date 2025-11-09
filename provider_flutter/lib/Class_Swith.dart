import 'package:flutter/material.dart';

class swi extends ChangeNotifier{
  bool switched = false;
  void sw(bool done){
    switched = done;
    notifyListeners();
  }
  }