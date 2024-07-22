import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
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
    // Get screen width and height
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    void _onIconTap(int index) {
      // Handle icon tap and navigation
      // Example:
      // if (index == 0) {
      //   Navigator.push(context, MaterialPageRoute(builder: (context) => FirstScreen()));
      // }
    }

    return Scaffold(
      backgroundColor: Color(0xFF0D1717),
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.05), // 5% of screen width
              child: Column(
                children: [
                  SizedBox(height: screenHeight * 0.1), // 10% of screen height
                  Row(
                    children: [
                      Container(
                        height: screenHeight * 0.05, // 5% of screen height
                        width: screenHeight * 0.05, // 5% of screen height to maintain aspect ratio
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(100),
                        ),
                      ),
                      SizedBox(width: screenWidth * 0.05), // 5% of screen width
                      Text(
                        'Hello, Clover',
                        style: TextStyle(color: Colors.white, fontSize: screenWidth * 0.05), // Adjust font size
                      ),
                      Spacer(),
                      SvgPicture.asset(
                        'assets/icons/ ',
                        height: screenHeight * 0.05, // Adjust icon size
                      ),
                    ],
                  ),
                  SizedBox(height: screenHeight * 0.02), // 5% of screen height
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
                                width: screenWidth * 0.2, // 20% of screen width
                                height: screenHeight * 0.05, // 5% of screen height
                                decoration: BoxDecoration(
                                  border: Border.all(color: Colors.grey),
                                  borderRadius: BorderRadius.circular(50),
                                ),
                              ),
                              SizedBox(width: 10,),
                              Container(
                                width: screenWidth * 0.2, // 20% of screen width
                                height: screenHeight * 0.05, // 5% of screen height
                                decoration: BoxDecoration(
                                  border: Border.all(color: Colors.grey),
                                  borderRadius: BorderRadius.circular(50),
                                ),
                              ),
                              SizedBox(width: 10,),
                              Container(
                                width: screenWidth * 0.3, // 20% of screen width
                                height: screenHeight * 0.05, // 5% of screen height
                                decoration: BoxDecoration(
                                  border: Border.all(color: Colors.grey),
                                  borderRadius: BorderRadius.circular(50),
                                ),
                              ),
                              SizedBox(width: 10,),
                              Container(
                                width: screenWidth * 0.5, // 20% of screen width
                                height: screenHeight * 0.05, // 5% of screen height
                                decoration: BoxDecoration(
                                  border: Border.all(color: Colors.grey),
                                  borderRadius: BorderRadius.circular(50),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: screenHeight * 0.02), 
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
                          SizedBox(width: 10,),
                          Container(
                            width: screenWidth * 0.1, // Width of the divider
                            height: 2, // Height of the divider
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
                              width: 224,
                              height: 158,
                              decoration: BoxDecoration(
                                color:cont2,
                              ),
                            ),
                            SizedBox(width: 3,),
                            Container(
                              width: 224,
                              height: 158,
                              decoration: BoxDecoration(
                                color: gen4,
                              ),
                            ),
                            SizedBox(width: 3,),
                            Container(
                              width: 224,
                              height: 158,
                              decoration: BoxDecoration(
                                color:cont2,
                              ),
                            ),
                            SizedBox(width: 3,)
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 10,),
                  Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text('courses', style: TextStyle(color: Colors.white),),
                          SizedBox(width: 10,),
                          Container(
                            width: screenWidth * 0.1, // Width of the divider
                            height: 2, // Height of the divider
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
                              width: 224,
                              height: 158,
                              decoration: BoxDecoration(
                                color: cont2
                              ),
                            ),
                            SizedBox(width: 3,),
                            Container(
                              width: 224,
                              height: 158,
                              decoration: BoxDecoration(
                                color: gen
                              ),
                            ),
                            SizedBox(width: 3,),
                            Container(
                              width: 224,
                              height: 158,
                              decoration: BoxDecoration(
                                color: gen4
                              ),
                            ),
                            SizedBox(width: 3,)
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 10,),
                  Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text('courses', style: TextStyle(color: Colors.white),),
                          SizedBox(width: 10,),
                          Container(
                            width: screenWidth * 0.1, // Width of the divider
                            height: 2, // Height of the divider
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
                              width: 224,
                              height: 158,
                              decoration: BoxDecoration(
                                color: cont2
                              ),
                            ),
                            SizedBox(width: 3,),
                            Container(
                              width: 224,
                              height: 158,
                              decoration: BoxDecoration(
                                color: gen
                              ),
                            ),
                            SizedBox(width: 3,),
                            Container(
                              width: 224,
                              height: 158,
                              decoration: BoxDecoration(
                                color: gen4
                              ),
                            ),
                            SizedBox(width: 3,)
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
 
