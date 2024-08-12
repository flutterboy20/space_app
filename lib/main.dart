import 'package:flutter/material.dart';
import 'package:flutter_universe/screens/bottom_nav_bar.dart';
import 'package:flutter_universe/screens/home_page.dart';
import 'package:flutter_universe/screens/profile_screen.dart';
import 'package:flutter_universe/screens/explore_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // App Title
      title: 'Flutter Universe',
      // App theming
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: BottomBar(),
      // ROutes and Screens
      routes: {
        ExploreScreen.routeName: (ctx) => ExploreScreen(),
        ProfileScreen.routeName: (ctx) => ProfileScreen(),
        BottomBar.routeName: (ctx) => BottomBar(),
        MyHomePage.routeName: (ctx) => MyHomePage(),
      },
      // This is used to remove the debug banner
      debugShowCheckedModeBanner: false,
    );
  }
}
