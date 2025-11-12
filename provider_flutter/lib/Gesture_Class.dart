import 'package:flutter/material.dart';

class gesture extends ChangeNotifier{
    bool  colour = false;
    void change(){
        colour = true;
        notifyListeners();
    }
    void changes(){
        colour = false;
        notifyListeners();
    }
}