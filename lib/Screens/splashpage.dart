 import 'package:flutter/material.dart';
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
    // Delay for 3 seconds
    await Future.delayed(Duration(seconds: 1), () {});
    // Navigate to HomeScreen and replace SplashScreen
         Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) =>OnBoard1()),
                    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: gen,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SizedBox(height: 20),
            Text(
              'Side Quest//',
              style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}
