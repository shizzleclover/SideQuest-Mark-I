import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

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
              boxShadow: [
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
                  icon: SvgPicture.asset('Assets/Icons/'),
                  onPressed: () => onIconTap(0),
                ),
                IconButton(
                  icon: SvgPicture.asset('Assets/Icons/'),
                  onPressed: () => onIconTap(1),
                ),
                IconButton(
                  icon: SvgPicture.asset('Assets/Icons/'),
                  onPressed: () => onIconTap(2),
                ),
                IconButton(
                  icon: SvgPicture.asset('Assets/Icons/'),
                  onPressed: () => onIconTap(3),
                ),
                IconButton(
                  icon: SvgPicture.asset('Assets/Icons/'),
                  onPressed: () => onIconTap(4),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
