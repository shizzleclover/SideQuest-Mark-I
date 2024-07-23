// lib/widgets/custom_text_field.dart

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomTextField extends StatelessWidget {
  final String hintText;
  final String iconPath;

  const CustomTextField({
    Key? key,
    required this.hintText,
    required this.iconPath,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.white,
          ),
          borderRadius: BorderRadius.all(
            Radius.circular(30.w),
          ),
        ),
        prefixIcon: SvgPicture.asset(iconPath),
        hintText: hintText,
      ),
    );
  }
}
