import 'package:flutter/material.dart';
import 'package:web1/Screens/Accounts/login.dart';
import 'package:web1/Screens/Accounts/signup.dart';
import 'package:web1/Screens/constants.dart';


class OnBoard4 extends StatelessWidget {
  const OnBoard4({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: gen5,
      body: Column(
        children: [
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(height: 260,),
                Text('Get Support In\n Your new\n Niche', style: TextStyle(),),
                Image.asset('Assets/Images/tr.png'),
                SizedBox(height: 50,),
                GestureDetector(
                  onTap: () {
                           Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => LoginPage()),
                    );
                  },
                  child: Container(
                    height: 50,
                    width: 255,
                    decoration: BoxDecoration(
                      
                      color: cont,
                      borderRadius: BorderRadius.circular(50)
                    ),
                    child: Center(
                      child: Text('Sign In', style: TextStyle(),),
                    ),
                  ),
                ),
                 SizedBox(height: 10,),
                GestureDetector(
                       onTap: () {
                           Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => SignupPage()),
                    );
                  },
                  child: Container(
                    height: 50,
                    width: 255,
                    decoration: BoxDecoration(
                     color: Colors.white,
                      borderRadius: BorderRadius.circular(50)
                    ),
                    child: Center(
                      child: Text('Sign Up', style: TextStyle(),),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}