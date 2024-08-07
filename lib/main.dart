 import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:web1/Screens/splashpage.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
 

 
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}
 class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(360, 690),
      builder: (context, child) => MaterialApp(
  theme: ThemeData.light(),
      home: SplashScreen(),
      debugShowCheckedModeBanner: false,
      ),
    );
  }
}

 