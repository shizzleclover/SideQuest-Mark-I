import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:web1/Screens/constants.dart';
import 'package:web1/widgets/bottomnavbar.dart'; // Import the custom bottom app bar

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    // Initialize ScreenUtil
    ScreenUtil.init(context);

    void _onIconTap(int index) {
      // Handle icon tap and navigation
      // Example:
      // if (index == 0) {
      //   Navigator.push(context, MaterialPageRoute(builder: (context) => FirstScreen()));
      // }
    }

    return Scaffold(
      backgroundColor: back,
      drawer: Drawer(
        backgroundColor: Colors.white,
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              child: Text('Sidebar', style: TextStyle(color: Colors.white, fontSize: 24.sp)),
            ),
            ListTile(
              title: Text('Item 1', style: TextStyle(color: Colors.white)),
              onTap: () {
                // Handle item 1 tap
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text('Item 2', style: TextStyle(color: Colors.white)),
              onTap: () {
                // Handle item 2 tap
                Navigator.pop(context);
              },
            ),
            // Add more ListTiles as needed
          ],
        ),
      ),
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.w), // Use ScreenUtil
              child: Column(
                children: [
                  SizedBox(height: 80.h), // Use ScreenUtil
                  Row(
                    children: [
                      GestureDetector(
                        onTap: () {
                          // Open the drawer
                          Scaffold.of(context).openDrawer();
                        },
                        child: Container(
                          height: 50.h, // Use ScreenUtil
                          width: 50.h, // Use ScreenUtil
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(100.r), // Use ScreenUtil
                          ),
                        ),
                      ),
                      SizedBox(width: 16.w), // Use ScreenUtil
                      Text(
                        'Hello, Clover',
                        style: TextStyle(color: Colors.white, fontSize: 24.sp), // Use ScreenUtil
                      ),
                      Spacer(),
                      SvgPicture.asset(
                        'assets/icons/ ', // Ensure correct path
                        height: 50.h, // Use ScreenUtil
                      ),
                    ],
                  ),
                  SizedBox(height: 16.h), // Use ScreenUtil
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Column(
                      children: [
                        SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Container(
                                width: 80.w, // Use ScreenUtil
                                height: 50.h, // Use ScreenUtil
                                decoration: BoxDecoration(
                                  border: Border.all(color: Colors.grey),
                                  borderRadius: BorderRadius.circular(50.r), // Use ScreenUtil
                                ),
                              ),
                              SizedBox(width: 10.w),
                              Container(
                                width: 80.w, // Use ScreenUtil
                                height: 50.h, // Use ScreenUtil
                                decoration: BoxDecoration(
                                  border: Border.all(color: Colors.grey),
                                  borderRadius: BorderRadius.circular(50.r), // Use ScreenUtil
                                ),
                              ),
                              SizedBox(width: 10.w),
                              Container(
                                width: 120.w, // Use ScreenUtil
                                height: 50.h, // Use ScreenUtil
                                decoration: BoxDecoration(
                                  border: Border.all(color: Colors.grey),
                                  borderRadius: BorderRadius.circular(50.r), // Use ScreenUtil
                                ),
                              ),
                              SizedBox(width: 10.w),
                              Container(
                                width: 200.w, // Use ScreenUtil
                                height: 50.h, // Use ScreenUtil
                                decoration: BoxDecoration(
                                  border: Border.all(color: Colors.grey),
                                  borderRadius: BorderRadius.circular(50.r), // Use ScreenUtil
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 16.h), // Use ScreenUtil
                        Row(
                          children: [],
                        )
                      ],
                    ),
                  ),
                  Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text('courses', style: TextStyle(color: Colors.white),),
                          SizedBox(width: 10.w), // Use ScreenUtil
                          Container(
                            width: 40.w, // Use ScreenUtil
                            height: 2.h, // Use ScreenUtil
                            color: Colors.white,
                          ),
                        ],
                      )
                    ],
                  ),
                  Column(
                    children: [
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Container(
                              width: 224.w, // Use ScreenUtil
                              height: 158.h, // Use ScreenUtil
                              decoration: BoxDecoration(
                                color: cont2,
                              ),
                            ),
                            SizedBox(width: 3.w), // Use ScreenUtil
                            Container(
                              width: 224.w, // Use ScreenUtil
                              height: 158.h, // Use ScreenUtil
                              decoration: BoxDecoration(
                                color: gen4,
                              ),
                            ),
                            SizedBox(width: 3.w), // Use ScreenUtil
                            Container(
                              width: 224.w, // Use ScreenUtil
                              height: 158.h, // Use ScreenUtil
                              decoration: BoxDecoration(
                                color: cont2,
                              ),
                            ),
                            SizedBox(width: 3.w) // Use ScreenUtil
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 10.h), // Use ScreenUtil
                  Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text('courses', style: TextStyle(color: Colors.white),),
                          SizedBox(width: 10.w), // Use ScreenUtil
                          Container(
                            width: 40.w, // Use ScreenUtil
                            height: 2.h, // Use ScreenUtil
                            color: Colors.white,
                          ),
                        ],
                      )
                    ],
                  ),
                  Column(
                    children: [
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Container(
                              width: 224.w, // Use ScreenUtil
                              height: 158.h, // Use ScreenUtil
                              decoration: BoxDecoration(
                                color: cont2
                              ),
                            ),
                            SizedBox(width: 3.w), // Use ScreenUtil
                            Container(
                              width: 224.w, // Use ScreenUtil
                              height: 158.h, // Use ScreenUtil
                              decoration: BoxDecoration(
                                color: gen
                              ),
                            ),
                            SizedBox(width: 3.w), // Use ScreenUtil
                            Container(
                              width: 224.w, // Use ScreenUtil
                              height: 158.h, // Use ScreenUtil
                              decoration: BoxDecoration(
                                color: gen4
                              ),
                            ),
                            SizedBox(width: 3.w) // Use ScreenUtil
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 10.h), // Use ScreenUtil
                  Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text('courses', style: TextStyle(color: Colors.white),),
                          SizedBox(width: 10.w), // Use ScreenUtil
                          Container(
                            width: 40.w, // Use ScreenUtil
                            height: 2.h, // Use ScreenUtil
                            color: Colors.white,
                          ),
                        ],
                      )
                    ],
                  ),
                  Column(
                    children: [
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                       


                           child: Row(
                             mainAxisAlignment: MainAxisAlignment.start,
                             children: [
                               Container(
                                 width: 224.w, // Use ScreenUtil
                                 height: 158.h, // Use ScreenUtil
                                 decoration: BoxDecoration(
                                   color: cont2
                                 ),
                               ),
                               SizedBox(width: 3.w), // Use ScreenUtil
                               Container(
                                 width: 224.w, // Use ScreenUtil
                                 height: 158.h, // Use ScreenUtil
                                 decoration: BoxDecoration(
                                   color: gen
                                 ),
                               ),
                               SizedBox(width: 3.w), // Use ScreenUtil
                               Container(
                                 width: 224.w, // Use ScreenUtil
                                 height: 158.h, // Use ScreenUtil
                                 decoration: BoxDecoration(
                                   color: gen4
                                 ),
                               ),
                               SizedBox(width: 3.w) // Use ScreenUtil
                             ],
                           ),
                         ),
                       ],
                     ),
                   ],
                 ),
               ),
             ),
             CustomBottomAppBar(
               backgroundColor: bot,
               onIconTap: _onIconTap,
             ),
           ],
         ),
       );
     }
   }
