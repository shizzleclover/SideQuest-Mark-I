 import 'package:flutter/material.dart';
import 'package:web1/Screens/splashpage.dart';

 void main() => runApp(MyApp());

 class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.light(),
      home: SplashScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}