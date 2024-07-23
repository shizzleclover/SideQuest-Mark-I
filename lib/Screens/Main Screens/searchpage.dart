// lib/screens/search_page.dart

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:web1/screens/constants.dart';
import 'package:web1/widgets/SearchBox.dart';
 

class Searchpage extends StatelessWidget {
  const Searchpage({super.key});

  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context);
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
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
