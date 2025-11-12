import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:random_user_api/providers/userProvider.dart';
import 'package:random_user_api/screens/homepage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider( 
      create: (context) => Userprovider(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
          home: Homepage(),
      ),
    );
  }
}

