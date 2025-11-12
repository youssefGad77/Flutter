import 'package:ecommerce_provider/buttonProvider.dart';
import 'package:ecommerce_provider/countaty_provider.dart';
import 'package:ecommerce_provider/homepage.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    // return MaterialApp(
    //   home: homepage(),

    // );
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) {
            return Buttonprovider();
          },
        ),
        ChangeNotifierProvider(
          create: (context) {
            return CountatyProvider();
          },
        ),
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        home: homepage(),
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}
