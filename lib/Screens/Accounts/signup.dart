import 'package:flutter/material.dart';
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

  // Future<void> _register() async {
  //   setState(() {
  //     _isLoading = true; // Show loading animation
  //   });

  //   final email = _emailController.text;
  //   final password = _passwordController.text;

  //   try {
  //     final response = await http.post(
  //       Uri.parse('http://192.168.1.10/user_auth/register.php'), // Use your local IP address
  //       body: jsonEncode({
  //         'email': email,
  //         'password': password,
  //       }),
  //       headers: {
  //         'Content-Type': 'application/json',
  //       },
  //     );

  //     // Log the response body for debugging
  //     print('Response status: ${response.statusCode}');
  //     print('Response body: ${response.body}');

  //     if (response.statusCode == 200) {
  //       // Ensure the response is valid JSON
  //       final result = jsonDecode(response.body);
  //       if (result['success']) {
  //         // Handle successful registration
  //         Navigator.push(
  //           context,
  //           MaterialPageRoute(builder: (context) => MainPage()),
  //         );
  //       } else {
  //         // Handle registration error
  //         ScaffoldMessenger.of(context).showSnackBar(
  //           SnackBar(content: Text(result['message'] ?? 'Registration failed')),
  //         );
  //       }
  //     } else {
  //       // Handle server error
  //       ScaffoldMessenger.of(context).showSnackBar(
  //         SnackBar(content: Text('Server error: ${response.statusCode}')),
  //       );
  //     }
  //   } catch (e) {
  //     // Handle any other errors
  //     ScaffoldMessenger.of(context).showSnackBar(
  //       SnackBar(content: Text('Error: $e')),
  //     );
  //     print('Error: $e');
  //   } finally {
  //     setState(() {
  //       _isLoading = false; // Hide loading animation
  //     });
  //   }
  // }

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
                      SizedBox(height: 100),
                      Padding(
                        padding: const EdgeInsets.only(right: 240.0),
                        child: Text('Email', style: TextStyle(color: Colors.white)),
                      ),
                      Container(
                        width: 340.0,
                        child: TextFormField(
                          controller: _emailController,
                          decoration: InputDecoration(
                            filled: true,
                            fillColor: Colors.white,
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5.0),
                              borderSide: BorderSide.none,
                            ),
                            contentPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                          ),
                        ),
                      ),
                      SizedBox(height: 20),
                      Padding(
                        padding: const EdgeInsets.only(right: 240.0),
                        child: Text('Password', style: TextStyle(color: Colors.white)),
                      ),
                      Container(
                        width: 340,
                        child: TextFormField(
                          controller: _passwordController,
                          decoration: InputDecoration(
                            hintText: '**********',
                            filled: true,
                            fillColor: Colors.white,
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5.0),
                              borderSide: BorderSide.none,
                            ),
                            contentPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                          ),
                          obscureText: true,
                        ),
                      ),
                      SizedBox(height: 30),
                      GestureDetector(
                        onTap: () {
                               Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) =>  MainPage()),
                    );
                        },
                        child: Container(
                          height: 54,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            color: gen,
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: Center(
                            child: Text('Register', style: TextStyle(fontFamily: ""),),
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
// returning err no 110 from the api