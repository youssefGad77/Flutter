import 'package:customwidget_formfiled/Custom_FormField.dart';
import 'package:customwidget_formfiled/Login.dart';
import 'package:customwidget_formfiled/RadioButton.dart';
import 'package:customwidget_formfiled/Slider.dart';
import 'package:customwidget_formfiled/TeamPoints.dart';
import 'package:customwidget_formfiled/changebackground.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Teampoints(),
    );
  }
}
