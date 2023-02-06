import 'package:flutter/material.dart';

class Splash_screen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
        // color: Colors.blue[50],
        color: Colors.black,
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          // crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // MainAxisAlignment
            Container(
              // height: double.infinity,
              alignment: Alignment.center,
              width: 150,
              child: Center(child: Image.asset("images/logo.png")),
            ),
            // SizedBox(
            //   height: 150,
            // ),
            Container(
              alignment: Alignment.bottomCenter,
              child: Text(
                "Habitify",
                style: TextStyle(
                  color: Colors.black,
                  fontFamily: "orange-juice",
                  fontSize: 35,
                  decoration: TextDecoration.none,
                ),
              ),
            ),
          ],
        ));
  }
}
