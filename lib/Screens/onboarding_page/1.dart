import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:web1/Screens/Accounts/login.dart';
import 'package:web1/Screens/Accounts/signup.dart';
import 'package:web1/Screens/constants.dart';

class OnBoard1 extends StatefulWidget {
  const OnBoard1({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _OnBoard1State createState() => _OnBoard1State();
}

class _OnBoard1State extends State<OnBoard1> {
  final CarouselController _carouselController = CarouselController();
  int _currentIndex = 0;

  final List<Color> pageColors = [
    gen2,
    gen3,
    gen4,
    gen5,
  ];

  final List<Widget> onboardingPages = [
    _buildOnboardingPage(
      color: gen2,
      imagePath: 'Assets/Images/purp.png',
      title: 'Welcome To\n SideQuest',
    ),
    _buildOnboardingPage(
      color: gen3,
      imagePath: 'Assets/Images/lad.png',
      title: 'Get Support In\n Your new\n Niche',
    ),
    _buildOnboardingPage(
      color: gen4,
      imagePath: 'Assets/Images/pr.png',
      title: 'Explore More Features',
    ),
    _buildOnboardingPage(
      color: gen5,
      imagePath: 'Assets/Images/tr.png',
      title: 'Join Us Today!',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: pageColors[_currentIndex],
      body: Column(
        children: [
          Expanded(
            child: CarouselSlider(
              items: onboardingPages,
              carouselController: _carouselController,
              options: CarouselOptions(
                height: MediaQuery.of(context).size.height,
                enlargeCenterPage: true,
                enableInfiniteScroll: false,
                autoPlay: false,
                onPageChanged: (index, reason) {
                  setState(() {
                    _currentIndex = index;
                  });
                },
              ),
            ),
          ),
          if (_currentIndex == onboardingPages.length - 1)
            Padding(
              padding: EdgeInsets.symmetric(vertical: 20.h),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  _buildButton(
                    text: 'Login',
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const LoginPage()),
                      );
                    },
                  ),
                  SizedBox(height: 10.h),
                  _buildButton(
                    text: 'SignUp',
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const SignupPage()),
                      );
                    },
                  ),
                ],
              ),
            ),
          Padding(
            padding: EdgeInsets.only(bottom: 20.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(onboardingPages.length, (index) {
                return GestureDetector(
                  onTap: () => _carouselController.animateToPage(index),
                  child: AnimatedContainer(
                    duration: const Duration(milliseconds: 300),
                    width: 12.w,
                    height: 12.h,
                    margin: EdgeInsets.symmetric(vertical: 8.h, horizontal: 4.w),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: _currentIndex == index
                          ? Colors.black
                          : Colors.black.withOpacity(0.4),
                    ),
                  ),
                );
              }),
            ),
          ),
        ],
      ),
    );
  }

  // Helper method to build onboarding page
  static Widget _buildOnboardingPage({
    required Color color,
    required String imagePath,
    required String title,
  }) {
    return Container(
      color: color,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(height: 20.h),
          Text(
            title,
            style: TextStyle(
              fontSize: 24.sp,
              fontWeight: FontWeight.bold,
              fontFamily: "play",
            ),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 20.h),
          Image.asset(imagePath),
          SizedBox(height: 50.h),
        ],
      ),
    );
  }

  // Helper method to build a button
  Widget _buildButton({required String text, required VoidCallback onTap}) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 50.h,
        width: 180.w,
        decoration: BoxDecoration(
          border: Border.all(color: bord, width: 1.5.w),
          borderRadius: BorderRadius.circular(5.0.r),
        ),
        child: Center(
          child: Text(
            text,
            style: TextStyle(fontSize: 18.sp, fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}
