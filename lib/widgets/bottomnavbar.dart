import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:web1/Screens/ProfilePage/profile_page.dart';
import 'package:web1/Screens/Main%20Screens/main.dart';
import 'package:web1/Screens/Main%20Screens/searchpage.dart';

class CustomBottomAppBar extends StatelessWidget {
  final Color backgroundColor;
  final Function(int) onIconTap;
  final int selectedIndex; // New parameter for the selected index

  CustomBottomAppBar({
    required this.backgroundColor,
    required this.onIconTap,
    required this.selectedIndex, // Initialize the parameter
  });

  @override
  Widget build(BuildContext context) {
    // Ensure ScreenUtil is initialized in the main entry point
    ScreenUtil.init(context);

    return Stack(
      children: [
        Positioned(
          bottom: ScreenUtil().bottomBarHeight,
          left: 0,
          right: 0,
          child: Container(
            margin: EdgeInsets.all(16.w),
            padding: EdgeInsets.symmetric(horizontal: 16.w),
            decoration: BoxDecoration(
              color: backgroundColor,
              borderRadius: BorderRadius.circular(50.r),
              boxShadow: const [
                BoxShadow(
                  color: Colors.black26,
                  blurRadius: 10,
                  spreadRadius: 1,
                  offset: Offset(0, 5),
                ),
              ],
            ),
            height: 70.h,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                IconButton(
                  icon: Icon(
                    Icons.home,
                    color: selectedIndex == 0 ? Colors.white : Colors.grey,
                  ),
                  onPressed: () {
                    onIconTap(0);
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => MainPage()),
                    );
                  },
                ),
                IconButton(
                  icon: Icon(
                    Icons.search,
                    color: selectedIndex == 1 ? Colors.white : Colors.grey,
                  ),
                  onPressed: () {
                    onIconTap(1);
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Searchpage()),
                    );
                  },
                ),
                IconButton(
                  icon: Icon(
                    Icons.notifications,
                    color: selectedIndex == 2 ? Colors.white : Colors.grey,
                  ),
                  onPressed: () {
                    onIconTap(2);
                  },
                ),
                IconButton(
                  icon: Icon(
                    Icons.message,
                    color: selectedIndex == 3 ? Colors.white : Colors.grey,
                  ),
                  onPressed: () => onIconTap(3),
                ),
                IconButton(
                  icon: Icon(
                    Icons.account_circle,
                    color: selectedIndex == 4 ? Colors.white : Colors.grey,
                  ),
                  onPressed: () {
                    onIconTap(4);
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => ProfilePage()),
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
