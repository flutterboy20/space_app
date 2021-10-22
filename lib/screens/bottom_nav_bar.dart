import 'package:flutter/material.dart';
import 'package:flutter_universe/constant.dart';
import 'package:flutter_universe/screens/home_page.dart';
import 'package:flutter_universe/screens/profile_screen.dart';
import 'package:flutter_universe/screens/explore_screen.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class BottomBar extends StatefulWidget {
  static const routeName = 'bottom-bar-screen';
  const BottomBar({key}) : super(key: key);

  @override
  _BottomBarState createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  int _currentIndex = 0;
  List page = [
    MyHomePage(),
    ExploreScreen(),
    ProfileScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            page[_currentIndex],
            Positioned(
              top: MediaQuery.of(context).size.height * 0.85,
              left: 5,
              child: Padding(
                padding: const EdgeInsets.only(left: 20, right: 20),
                child: Container(
                  height: 60,
                  width: 350,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(30),
                    child: Container(
                      // color: gradientEndColor,
                      margin: EdgeInsets.all(8),
                      height: 50,
                      child: GNav(
                          onTabChange: (index) {
                            setState(() => _currentIndex = index);
                          },
                          rippleColor: Colors
                              .white, // tab button ripple color when pressed
                          hoverColor: Colors.white, // tab button hover color
                          haptic: true, // haptic feedback
                          tabBorderRadius: 15,
                          tabActiveBorder: Border.all(
                              color: gradientStartColor,
                              width: 1), // tab button border
                          tabBorder: Border.all(
                              color: gradientStartColor,
                              width: 1), // tab button border
                          curve: Curves.easeIn, // tab animation curves
                          duration: Duration(
                              milliseconds: 500), // tab animation duration
                          gap: 8, // the tab button gap between icon and text
                          color: Colors.white, // unselected icon color
                          activeColor:
                              Colors.white, // selected icon and text color
                          iconSize: 32, // tab button icon size
                          // selected tab background color
                          padding: EdgeInsets.symmetric(
                              horizontal: 20,
                              vertical: 5), // navigation bar padding
                          tabs: [
                            GButton(
                              icon: Icons.home_rounded,
                              text: 'Home',
                            ),
                            GButton(
                              icon: Icons.explore_outlined,
                              text: 'Explore',
                            ),
                            GButton(
                              icon: Icons.person_outline,
                              text: 'Search',
                            ),
                          ]),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
