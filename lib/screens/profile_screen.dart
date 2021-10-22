import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class ProfileScreen extends StatelessWidget {
  static const routeName = 'profile-screen';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        color: Colors.black,
        child: Column(
          children: [
            Container(
              child: Lottie.network(
                  'https://assets10.lottiefiles.com/packages/lf20_ZQhQzO.json',
                  repeat: true),
            ),
            SizedBox(
              height: 50,
            ),
            Text('Create account to\n  Save your data',
                style: TextStyle(color: Colors.white, fontSize: 36)),
          ],
        ),
      ),
    );
  }
}
