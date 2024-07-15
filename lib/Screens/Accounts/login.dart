import 'package:flutter/material.dart';
import 'package:web1/Screens/constants.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: blc,
      body: SingleChildScrollView(
        child: Column(children: [
          Padding(padding: EdgeInsets.only(top: 200, left: 50, right: 50),
          child: Column(children: [
            Text('LogIn to your account', style: TextStyle(color: Colors.white),)
          ],),
          )
        ],),
      ),
    );
  }
}