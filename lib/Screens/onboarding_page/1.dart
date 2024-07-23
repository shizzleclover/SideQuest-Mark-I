import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:web1/Screens/Accounts/login.dart';
import 'package:web1/Screens/Accounts/signup.dart';
import 'package:web1/Screens/constants.dart';

class OnBoard1 extends StatefulWidget {
  const OnBoard1({super.key});

  @override
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
    gen5,
  ];

  final List<Widget> onboardingPages = [
    Container(
      color: gen2,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(height: 20.h),
          Text(
            'Welcome To\n SideQuest',
            style: TextStyle(
              fontSize: 24.sp,
              fontWeight: FontWeight.bold,
              fontFamily: "play",
            ),
            textAlign: TextAlign.center,
          ),
          Image.asset('Assets/Images/purp.png'),
          SizedBox(height: 50.h),
        ],
      ),
    ),
    Container(
      color: gen3,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(height: 20.h),
          Text(
            'Get Support In\n Your new\n Niche',
            style: TextStyle(
              fontSize: 24.sp,
              fontWeight: FontWeight.bold,
              fontFamily: "play",
            ),
            textAlign: TextAlign.center,
          ),
          Image.asset('Assets/Images/lad.png'),
          SizedBox(height: 50.h),
        ],
      ),
    ),
    Container(
      color: gen4,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(height: 20.h),
          Text(
            'Explore More Features',
            style: TextStyle(
              fontSize: 24.sp,
              fontWeight: FontWeight.bold,
              fontFamily: "play",
            ),
            textAlign: TextAlign.center,
          ),
          Image.asset('Assets/Images/pr.png'),
        ],
      ),
    ),
    Container(
      color: gen5,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(height: 20.h),
          Text(
            'Join Us Today!',
            style: TextStyle(
              fontSize: 24.sp,
              fontWeight: FontWeight.bold,
              fontFamily: "play",
            ),
            textAlign: TextAlign.center,
          ),
          Image.asset('Assets/Images/tr.png'),
          SizedBox(height: 20.h),
        ],
      ),
    ),
    // Removed the redundant Container from the list
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: pageColors[_currentIndex],
      body: Column(
        children: [
          // Buttons above the carousel
          if (_currentIndex == onboardingPages.length - 1)
            Padding(
              padding: EdgeInsets.all(16.w),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const LoginPage()),
                      );
                    },
                    child: Container(
                      height: 50.h,
                      width: 180.w,
                      decoration: BoxDecoration(
                        border: Border.all(color: bord, width: 3.w),
                        borderRadius: BorderRadius.circular(50.r),
                      ),
                      child: Center(
                        child: Text('Login', style: TextStyle(fontSize: 18.sp, fontWeight: FontWeight.bold)),
                      ),
                    ),
                  ),
                  SizedBox(width: 10.w),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const SignupPage()),
                      );
                    },
                    child: Container(
                      height: 50.h,
                      width: 180.w,
                      decoration: BoxDecoration(
                        border: Border.all(color: bord, width: 3.w),
                        borderRadius: BorderRadius.circular(50.r),
                      ),
                      child: Center(
                        child: Text('SignUp', style: TextStyle(fontSize: 18.sp, fontWeight: FontWeight.bold)),
                      ),
                    ),
                  ),
                ],
              ),
            ),
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
          Padding(
            padding: EdgeInsets.only(bottom: 20.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: onboardingPages.asMap().entries.map((entry) {
                return GestureDetector(
                  onTap: () => _carouselController.animateToPage(entry.key),
                  child: AnimatedContainer(
                    duration: Duration(milliseconds: 300),
                    width: 12.w,
                    height: 12.h,
                    margin: EdgeInsets.symmetric(vertical: 8.h, horizontal: 4.w),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: _currentIndex == entry.key
                          ? Colors.black
                          : Colors.black.withOpacity(0.4),
                    ),
                  ),
                );
              }).toList(),
            ),
          ),
        ],
      ),
    );
  }
}
