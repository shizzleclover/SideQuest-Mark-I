import 'package:flutter/material.dart';
import 'package:web1/Screens/constants.dart';
import 'package:web1/Screens/onboarding_page/2.dart';


class OnBoard1 extends StatelessWidget {
  const OnBoard1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: gen2,
      body: Column(
        children: [
          Center(
            child: Column(
              children: [
                SizedBox(height: 260,),
                Text('Welcome To\n SideQuest', style: TextStyle(),),
                Image.asset('Assets/Images/purp.png'),
                SizedBox(height: 50,),
                GestureDetector(
                  onTap: () {
                           Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => OnBoard2()),
                    );
                  },
                  child: Container(
                    height: 50,
                    width: 180,
                    decoration: BoxDecoration(
                      border: Border.all(color:bord , width: 3),
                      borderRadius: BorderRadius.circular(50)
                    ),
                    child: Center(
                      child: Text('Next', style: TextStyle(),),
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