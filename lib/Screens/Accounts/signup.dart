import 'package:flutter/material.dart';
import 'package:web1/Screens/Main%20Screens/main.dart';
import 'package:web1/Screens/constants.dart';

class SignupPage extends StatelessWidget {
  const SignupPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: blc,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 200.0, left: 50.0, right: 50.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'Create \nAccount',
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'play',
                      fontSize: 30,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: 160),
                  Padding(
                    padding: const EdgeInsets.only(right: 240.0),
                    child: Text('Email', style: TextStyle(color: Colors.white),),
                  ),
                  Container(
                    width: 340.0, // Set the desired width
                    child: TextFormField(
                      decoration: InputDecoration(
                         
                        filled: true,
                        fillColor: Colors.white,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(50.0),
                          borderSide: BorderSide.none,
                        ),
                        contentPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                   Padding(
                    padding: const EdgeInsets.only(right: 240.0),
                    child: Text('Password', style: TextStyle(color: Colors.white),),
                  ),
                  Container(
                    width: 340, // Set the desired width
                    child: TextFormField(
                      decoration: InputDecoration(
                        hintText: '*****',
                        filled: true,
                        fillColor: Colors.white,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(50.0),
                          borderSide: BorderSide.none,
                        ),
                        contentPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                      ),
                      obscureText: true,
                    ),
                  ),
                  SizedBox(height: 30,),
                  GestureDetector(
                    onTap: () {
                           Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => MainPage()),
                    );
                    }, 
                    child: Container(
                      height: 54,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: gen,
                        borderRadius: BorderRadius.circular(50),
                      ),
                      child: Center(
                        child: Text('Login'),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
