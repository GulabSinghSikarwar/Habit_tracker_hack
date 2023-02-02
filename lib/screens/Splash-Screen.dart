import 'package:flutter/material.dart';

class Splash_screen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
        color: Colors.blue[50],
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              // height: double.infinity,
              // width: double.infinity,
              child: Center(child: Image.asset("images/splash1.jpg")),
            ),
          ],
        ));
  }
}
