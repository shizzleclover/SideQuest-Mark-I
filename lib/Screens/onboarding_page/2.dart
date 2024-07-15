import 'package:flutter/material.dart';
import 'package:web1/Screens/constants.dart';
import 'package:web1/Screens/onboarding_page/3.dart';


class OnBoard2 extends StatelessWidget {
  const OnBoard2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: gen3,
      body: Column(
        children: [
          Center(
            child: Column(
              children: [
                SizedBox(height: 260,),
                Text('Get Support In\n Your new\n Niche', style: TextStyle(),),
                Image.asset('Assets/Images/lad.png'),
                SizedBox(height: 50,),
                GestureDetector(
                  onTap: () {
                           Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => OnBoard3()),
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