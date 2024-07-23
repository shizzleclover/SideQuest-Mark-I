// lib/screens/search_page.dart

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:web1/screens/constants.dart';
import 'package:web1/widgets/SearchBox.dart';
import 'package:web1/widgets/bottomnavbar.dart';
 

class Searchpage extends StatelessWidget {
  const Searchpage({super.key});

  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context);

    void _onIconTap (int index) {
       // Handle icon tap and navigation
      // Example:
      // if (index == 0) {
      //   Navigator.push(context, MaterialPageRoute(builder: (context) => FirstScreen()));
      // }
    }
    return Scaffold(
      backgroundColor: back,
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.w),
              child: Column(
                children: [
                  SizedBox(height: 50.h),
                  CustomTextField(
                    hintText: 'Search',
                    iconPath: 'Assets/icons/search.svg',  // Provide the correct path to your SVG
                  ),
                  SizedBox(height: 20.h,),
                 Align(
  alignment: Alignment.centerLeft,
  child: Column(
    mainAxisAlignment: MainAxisAlignment.start,
    children: [
      Text('Popular Searches', style: TextStyle(color: Colors.white)),
    ],
  ),
),
                ],
            
              ),
            ),
          ),
          CustomBottomAppBar(
            backgroundColor: bot,
             onIconTap: _onIconTap,
             )
        ],
      ),
    );
  }
}
