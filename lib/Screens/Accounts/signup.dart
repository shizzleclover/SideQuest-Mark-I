import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:web1/Screens/Main%20Screens/main.dart';
import 'package:web1/Screens/constants.dart';

class SignupPage extends StatefulWidget {
  const SignupPage({super.key});

  @override
  _SignupPageState createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  bool _isLoading = false; // State variable for loading
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: blc,
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 200.h, left: 50.w, right: 50.w),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        'Create \nAccount',
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'play',
                          fontSize: 30.sp,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(height: 50.h),
                      Padding(
                        padding: EdgeInsets.only(right: 220.w),
                        child: Text('Email', style: TextStyle(color: Colors.white)),
                      ),
                      Container(
                        width: 340.w,
                        child: TextFormField(
                          controller: _emailController,
                          decoration: InputDecoration(
                            filled: true,
                            fillColor: Colors.white,
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5.0.r),
                              borderSide: BorderSide.none,
                            ),
                            contentPadding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 15.h),
                          ),
                        ),
                      ),
                      SizedBox(height: 20.h),
                      Padding(
                        padding: EdgeInsets.only(right: 200.w),
                        child: Text('Password', style: TextStyle(color: Colors.white)),
                      ),
                      Container(
                        width: 340.w,
                        child: TextFormField(
                          controller: _passwordController,
                          decoration: InputDecoration(
                            hintText: '**********',
                            filled: true,
                            fillColor: Colors.white,
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5.0.r),
                              borderSide: BorderSide.none,
                            ),
                            contentPadding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 15.h),
                          ),
                          obscureText: true,
                        ),
                      ),
                      SizedBox(height: 30.h),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => MainPage()),
                          );
                        },
                        child: Container(
                          height: 54.h,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            color: gen,
                            borderRadius: BorderRadius.circular(5.0.r),
                          ),
                          child: Center(
                            child: Text('Register', style: TextStyle(fontFamily: "", fontSize: 16.sp)),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
          if (_isLoading)
            Container(
              color: Colors.black54, // Semi-transparent background
              child: Center(
                child: CircularProgressIndicator(),
              ),
            ),
        ],
      ),
    );
  }
}
