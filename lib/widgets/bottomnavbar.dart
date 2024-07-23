import 'package:flutter/material.dart';
import 'package:web1/Screens/ProfilePage/profile_page.dart';
import 'package:web1/Screens/Main%20Screens/main.dart';
import 'package:web1/Screens/Main%20Screens/searchpage.dart';

class CustomBottomAppBar extends StatelessWidget {
  final Color backgroundColor;
  final Function(int) onIconTap;

  CustomBottomAppBar({
    required this.backgroundColor,
    required this.onIconTap,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
          bottom: MediaQuery.of(context).padding.bottom,
          left: 0,
          right: 0,
          child: Container(
            margin: EdgeInsets.all(16),
            padding: EdgeInsets.symmetric(horizontal: 16),
            decoration: BoxDecoration(
              color: backgroundColor,
              borderRadius: BorderRadius.circular(50),
              boxShadow: const [
                  BoxShadow(
                  color: Colors.black26,
                  blurRadius: 10,
                  spreadRadius: 1,
                  offset: Offset(0, 5),
                ),
              ],
            ),
            height: 70,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                IconButton(
                  icon: const Icon(Icons.home, color: Colors.white),
                  onPressed: () {
                      onIconTap(0);
                           Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => MainPage()),
                    );
                  }
                ),
                IconButton(
                  icon: const Icon(Icons.search, color: Colors.white),
                  onPressed: () {
                      onIconTap(1);
                           Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Searchpage()),
                    );
                  } 
                ),
                IconButton(
                  icon: const Icon(Icons.notifications, color: Colors.white),
             onPressed: () {
              onIconTap(2);
             },
                ),
                IconButton(
                  icon: const Icon(Icons.message, color: Colors.white),
                  onPressed: () => onIconTap(3),
                  
                ),
                IconButton(
                  icon: Icon(Icons.account_circle, color: Colors.white),
                   onPressed: () {
                onIconTap(2);
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
