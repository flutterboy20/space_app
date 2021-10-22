import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class ExploreScreen extends StatelessWidget {
  static const routeName = 'explore-screen';
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
                  'https://assets7.lottiefiles.com/packages/lf20_RYmOmk.json',
                  repeat: true),
            ),
            SizedBox(
              height: 100,
            ),
            Text('Explore the\n     Space',
                style: TextStyle(color: Colors.white, fontSize: 36)),
          ],
        ),
      ),
    );
  }
}
