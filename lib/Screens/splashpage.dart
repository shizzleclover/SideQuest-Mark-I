import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart'; // Import ScreenUtil
import 'package:web1/Screens/constants.dart';
import 'package:web1/Screens/onboarding_page/1.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    _navigateToHome();
  }

  // Function to navigate to HomeScreen after a delay
  _navigateToHome() async {
    // Delay for 1 second
    await Future.delayed(Duration(seconds: 1), () {});
    // Navigate to HomeScreen and replace SplashScreen
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => OnBoard1()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(360, 690), // Define your design size here
      builder: (context, child) => Scaffold(
        backgroundColor: gen,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              SizedBox(height: 20.h), // Use ScreenUtil for height
              Text(
                'Side Quest//',
                style: TextStyle(
                  fontSize: 24.sp, // Use ScreenUtil for font size
                  fontWeight: FontWeight.bold,
                  fontFamily: "play"
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
