import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:web1/Screens/constants.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: blc,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              children: [
                SizedBox(height: 200,),
                SizedBox(width: 30,),
                Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                    color: Colors.white,
                  ),
                ),
                 SizedBox(width: 30,),
                 Text('Hello, Clover', style: TextStyle(color: gen4),),
                  SizedBox(width: 40,),
                  SvgPicture.asset('Assets/Icons/')

              ],
            )
          ],
        ),
      ),
    );
  }
}